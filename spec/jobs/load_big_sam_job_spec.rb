require 'rails_helper'
require 'fileutils'

RSpec.describe LoadBigSamJob do
  # Matches the header keys LoadBigSamJob reads off a parsed spreadsheet row, with
  # defaults that produce a valid, mundane letter. Override just the keys a given
  # test cares about.
  def valid_row(overrides = {})
    {
      id: 900, code: 'ROW', day: 1, month: 1, year: 60,
      addressed_to_actual: nil, addressed_from_actual: nil,
      reg_place_written: nil, reg_place_written_city: nil,
      reg_place_written_country: nil, reg_place_written_second_city: nil,
      autograph_or_typed: 'A', physdes: nil, initialed_or_signed: 'S',
      postcard_image: nil, phys_descr_detail: nil, physdes_notes: nil,
      leaves: 1, sides: 1, envelope: nil, postmark_actual: nil,
      reg_recipient: nil, reg_place_sent: nil, reg_placesent_city: nil,
      reg_placesent_country: nil, exclude: nil, additional: nil,
      first_repository: nil, first_format: nil, euro_or_am: nil,
      first_public: nil, first_collection: nil, repository_information: nil,
      collection_url: nil, second_repository: nil, second_format: nil,
      second_public: nil, second_collection: nil, third_repository: nil,
      third_format: nil, third_public: nil, third_collection: nil,
      ownerrights: nil, primarylang: nil, file: nil, sender: nil,
      volumeinfo: nil, placeprevpubl: nil, verified: nil
    }.merge(overrides)
  end

  it 'uploads_deletes' do
    big_sam_file = fixture_file_upload('big_sam.xlsx')
    bs = create(:big_sam, big_sam: big_sam_file)
    expect(File.exist?(bs.local_path)).to be(false)
    expect(Letter.count).to eq(20)
    expect(BigSam.find_by(id: bs.id)).to be_nil
  end

  it 'uploads_parses_names' do
    big_sam_file = fixture_file_upload('big_sam.xlsx')
    create(:big_sam, big_sam: big_sam_file)
    # Mac[A-Z] names.
    expect(Entity.find_by(last_name: 'MacGowran')).not_to be_nil
    # Mc[A-Z] names.
    expect(Entity.find_by(last_name: 'McGowran')).not_to be_nil
    # When van is in the name.
    expect(Entity.find_by(label: 'Van Winkel, Jacoba')).not_to be_nil
    # When van is lowercase.
    expect(Entity.find_by(label: 'Van Velde, Jacoba')).not_to be_nil
    # von as part of the name.
    expect(Entity.find_by(label: 'von Abele, Rudolph')).not_to be_nil
    # When von is capitalized.
    expect(Entity.find_by(label: 'von Boo, Rudolph')).not_to be_nil
    # Middle name starts with O'
    expect(Entity.find_by(label: "Beckett, Peggy O'Connell")).not_to be_nil
    # Last name starts with O'
    expect(Entity.find_by(label: "O'Connell, Peggy")).not_to be_nil
    # All caps in fixture
    expect(Entity.find_by(label: 'Marx, Karl')).not_to be_nil
  end

  it 'dry_run makes no persistent changes but reports what would happen' do
    fixture = Struct.new(:local_path).new(Rails.root.join('spec/fixtures/files/big_sam.xlsx').to_s)
    job = described_class.new

    result = job.dry_run(fixture)

    expect(Letter.count).to eq(0)
    expect(Entity.count).to eq(0)
    expect(Repository.count).to eq(0)
    expect(BigSam.count).to eq(0)
    expect(result[:total]).to eq(20)
    expect(result[:errors]).to eq([])
    expect(result[:would_create][:letters]).to eq(20)
    expect(result[:would_create][:repositories]).to eq(7)
  end

  it 'sets_letters_public' do
    big_sam_file = fixture_file_upload('big_sam.xlsx')
    create(:big_sam, big_sam: big_sam_file)
    Letter.find_each(&:save)
    expect(Letter.published.count).to eq(19)
    expect(Repository.count).to eq(7)
    expect(Repository.published.count).to eq(4)
  end

  it 'handles_o_names' do
    bs = described_class.new
    names = bs.o?(Namae.parse("Beckett, Peggy O'Connell").first)
    expect(names.given).to include("O'Connell")
  end

  it 'handles_mc_names' do
    bs = described_class.new
    mcintosh = Namae.parse('Martin McIntosh'.titleize).first
    expect(mcintosh.given).to eq('Martin Mc')
    expect(mcintosh.family).to eq('Intosh')
    names = bs.mc_or_mac?(mcintosh)
    expect(names.family).to eq('McIntosh')
  end

  it 'handles_mac_names' do
    bs = described_class.new
    macintosh = Namae.parse('Martin Macintosh').first
    expect(macintosh.family).to eq('Macintosh')
    names = bs.mc_or_mac?(macintosh)
    expect(names.family).to eq('MacIntosh')
  end

  it 'handles M names that also include a c' do
    bs = described_class.new
    marcuse = Namae.parse('Herbert Marcuse').first
    names = bs.mc_or_mac?(marcuse)
    expect(names.family).to eq('Marcuse')
  end

  describe '#normalize_label' do
    let(:job) { described_class.new }

    it 'strips surrounding whitespace and squeezes internal whitespace' do
      expect(job.normalize_label('  Barry   Collection  ')).to eq('Barry Collection')
    end

    it 'stringifies nil to an empty string' do
      expect(job.normalize_label(nil)).to eq('')
    end
  end

  describe '#find_or_create_by_label' do
    let(:job) { described_class.new }

    it 'returns nil for a blank label without creating a record' do
      expect(job.find_or_create_by_label(LetterOwner, '   ')).to be_nil
      expect(LetterOwner.count).to eq(0)
    end

    it 'matches an existing record case- and whitespace-insensitively instead of duplicating it' do
      existing = LetterOwner.create!(label: 'Beckett Estate')

      found = job.find_or_create_by_label(LetterOwner, '  BECKETT ESTATE  ')

      expect(found).to eq(existing)
      expect(LetterOwner.count).to eq(1)
    end

    it 'creates a new, whitespace-normalized record when nothing matches' do
      created = job.find_or_create_by_label(LetterOwner, '  New   Owner  ')

      expect(created.label).to eq('New Owner')
      expect(LetterOwner.count).to eq(1)
    end
  end

  describe '#find_or_initialize_by_label' do
    let(:job) { described_class.new }

    it 'returns a new, unsaved record when nothing matches' do
      repository = job.find_or_initialize_by_label(Repository, 'Yale')

      expect(repository).to be_new_record
      expect(repository.label).to eq('Yale')
    end

    it 'finds an existing record case-insensitively instead of duplicating it' do
      existing = Repository.create!(label: 'Yale')

      repository = job.find_or_initialize_by_label(Repository, 'YALE')

      expect(repository).to eq(existing)
      expect(repository).not_to be_new_record
    end
  end

  describe '#get_letter' do
    let(:job) { described_class.new }

    it 'treats the exclude flag as case- and whitespace-insensitive and destroys the existing letter' do
      Letter.create!(legacy_pk: 42)

      result = job.get_letter(valid_row(id: 42, exclude: ' y '))

      expect(result).to be_nil
      expect(Letter.find_by(legacy_pk: 42)).to be_nil
    end

    it 'does not destroy the letter during a dry run' do
      Letter.create!(legacy_pk: 43)
      job.instance_variable_set(:@dry_run, true)

      result = job.get_letter(valid_row(id: 43, exclude: 'Y'))

      expect(result).to be_nil
      expect(Letter.find_by(legacy_pk: 43)).not_to be_nil
    end

    it 'finds or creates a letter by legacy_pk when not excluded' do
      result = job.get_letter(valid_row(id: 44))

      expect(result).to be_persisted
      expect(result.legacy_pk).to eq(44)
    end
  end

  describe 'row processing' do
    let(:job) { described_class.new }

    it 'normalizes verified to true only for an exact (case/whitespace-insensitive) "y"' do
      job.load_letters([
                         valid_row(id: 950, code: 'V1', verified: 'y'),
                         valid_row(id: 951, code: 'V2', verified: ' Y '),
                         valid_row(id: 952, code: 'V3', verified: '[Y]'),
                         valid_row(id: 953, code: 'V4', verified: 'N')
                       ])

      expect(Letter.find_by(legacy_pk: 950).verified).to be(true)
      expect(Letter.find_by(legacy_pk: 951).verified).to be(true)
      # Bracketed/ambiguous values are treated as unverified, not silently guessed at.
      expect(Letter.find_by(legacy_pk: 952).verified).to be(false)
      expect(Letter.find_by(legacy_pk: 953).verified).to be(false)
    end

    it 'skips a row with an unparseable date without aborting the rest of the batch' do
      job.load_letters([
                         valid_row(id: 954, code: 'BAD', day: 45, month: 13, year: 60),
                         valid_row(id: 955, code: 'GOOD')
                       ])

      skipped = job.instance_variable_get(:@row_skipped)
      expect(skipped.size).to eq(1)
      expect(skipped.first[:code]).to eq('BAD')
      expect(skipped.first[:reason]).to match(/bad date/)
      expect(Letter.find_by(legacy_pk: 955).code).to eq('GOOD')
    end

    it 'isolates an unexpected error to a single row and keeps processing the rest' do
      job.load_letters([
                         valid_row(id: 956, code: 'ERR', leaves: Object.new),
                         valid_row(id: 957, code: 'OK')
                       ])

      errors = job.instance_variable_get(:@row_errors)
      expect(errors.size).to eq(1)
      expect(errors.first[:code]).to eq('ERR')
      expect(Letter.find_by(legacy_pk: 957).code).to eq('OK')
    end

    it 'rolls back a failed row instead of leaving its cleared associations empty' do
      place = create(:place_entity)
      letter = Letter.create!(legacy_pk: 962)
      letter.origins << place

      job.load_letters([
                         valid_row(id: 962, code: 'ROLLBACK', day: 45, month: 13, year: 60, reg_place_written: 'London')
                       ])

      expect(letter.reload.origins).to eq([place])
    end

    it 'reuses a repository across rows regardless of case/whitespace differences in its label' do
      job.load_letters([
                         valid_row(id: 958, code: 'R1', first_repository: 'Barry Collection', first_public: 'public'),
                         valid_row(id: 959, code: 'R2', first_repository: '  BARRY COLLECTION  ',
                                   first_public: 'public')
                       ])

      expect(Repository.count).to eq(1)
      expect(Repository.first.label).to eq('Barry Collection')
    end

    it 'wires the third collection to the third repository slot, not the second' do
      job.load_letters([
                         valid_row(id: 960, code: 'T1', third_repository: 'Third Repo', third_collection: 'Third Coll')
                       ])

      letter = Letter.find_by(legacy_pk: 960)
      expect(letter.collections.pluck(:label)).to eq(['Third Coll'])
    end

    it 'does not crash when a recipient needs the organization/fallback path' do
      # Regression test: this used to call the nonexistent String#string and raise
      # NoMethodError for any recipient that get_person couldn't resolve to a person.
      allow(job).to receive(:get_person).and_return(nil)

      job.load_letters([valid_row(id: 961, code: 'ORG', reg_recipient: 'Some Org')])

      expect(job.instance_variable_get(:@row_errors)).to be_empty
      letter = Letter.find_by(legacy_pk: 961)
      expect(letter.recipients).not_to be_empty
    end
  end
end

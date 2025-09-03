require 'rails_helper'
require 'fileutils'

RSpec.describe LoadBigSamJob do
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

  it 'sets_letters_public' do
    big_sam_file = fixture_file_upload('big_sam.xlsx')
    create(:big_sam, big_sam: big_sam_file)
    Letter.find_each(&:save)
    expect(Letter.published.count).to eq(18)
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
end

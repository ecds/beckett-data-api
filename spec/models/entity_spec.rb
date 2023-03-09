# frozen_string_literal: true

# rubocop:disable Layout/LineLength

require 'rails_helper'
require 'action_view'

RSpec.describe Entity, type: :model do
  include ActionView::Helpers::SanitizeHelper

  it 'creates a hash of pubically avaliable letters where entity is mentioned' do
    entity = create(:place_entity)

    create_list(:letter, 5)

    create_list(
      :letter,
      4,
      date: Faker::Date.between(from: '1900-1-1', to: '1930-1-1'),
      repositories: create_list(:repository, 1, published: true),
      entities: [entity]
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, published: true),
      destinations: [entity],
      recipients: create_list(:person_entity, 2)
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, published: true),
      origins: [entity],
      recipients: create_list(:person_entity, 2)
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, published: true),
      entities: [entity],
      recipients: create_list(:person_entity, 2)
    )

    create_list(
      :letter,
      2,
      date: Faker::Date.between(from: '1957-1-1', to: '1965-12-31'),
      repositories: create_list(:repository, 1, published: false),
      entities: [entity]
    )

    create_list(
      :letter,
      3,
      date: Faker::Date.between(from: '1966-1-1', to: '2000-12-31'),
      repositories: create_list(:repository, 1, published: false),
      destinations: [entity],
      recipients: create_list(:person_entity, 2)
    )

    expect(entity.all_letters.count).to be < Letter.count
    expect(entity.all_letters.count).to eq(15)
    expect(entity.letters.count).to eq(8)
    expect(entity.published_letters_hash.length).to eq(10)
  end

  context 'when attribute wrapped in div' do
    it 'removes the div tags from attribute' do
      entity = create(:entity)
      entity.update(label: "<div>#{entity.label}</div>")
      expect(entity.label).not_to start_with('<div>')
      expect(entity.label).not_to end_with('</div>')
    end
  end

  context 'when label is concatenated' do
    it 'labels a person with last_name, first_name' do
      person = create(:person_entity)
      expect(person.label).to eq("#{person.last_name}, #{person.first_name}")
    end

    it 'adds first and last name when label and no names' do
      person = create(:person_entity, label: 'Miguel Almirón', first_name: nil, last_name: nil)
      expect(person.first_name).to eq('Miguel')
      expect(person.last_name).to eq('Almirón')
    end

    it 'sets life_dates to nil when saved as nd' do
      person = create(:person_entity, life_dates: 'nd')
      expect(person.life_dates).to be_nil
    end

    it 'labels attendance with event_types and description' do
      attendance = create(:attendance_entity)
      expect(attendance.label).to eq("#{attendance.event_types.map(&:titleize).join(',')}, #{attendance.description}")
    end

    it 'labels attendance with only event_types when no description' do
      attendance = create(:attendance_entity)
      attendance.update(description: nil)
      expect(attendance.label).to eq(attendance.event_types.map(&:titleize).join(','))
    end

    it 'labels attendance with only description when no event_type' do
      attendance = create(:attendance_entity, event_types: nil)
      expect(attendance.label).to eq(attendance.description)
    end
  end

  context 'when missing full stop' do
    it 'needs full stop added' do
      entity = create(
        :entity,
        e_type: 'generic',
        date_str: '1965',
        description: 'some text',
        publication_information: 'info',
        translated_title: 'kartoffeln'
      )

      expect(entity.date_str).to end_with('.')
      expect(entity.description).to end_with('.')
      expect(entity.publication_information).to end_with('.')
      expect(entity.translated_title).to end_with('.')
    end

    it 'allows ! and ?' do
      entity = create(
        :entity,
        e_type: 'generic',
        date_str: '1965?',
        description: 'what!'
      )

      expect(entity.date_str).to end_with('?')
      expect(entity.description).to end_with('!')
    end
  end

  # context 'when lable contains em tag' do
  # end

  context 'when all valid' do
    # short descriptions
    it 'has short display' do
      described_class.e_types.keys[0..11].each do |type|
        create("#{type}_entity".to_sym)
        expect(described_class.public_send(type).first.short_display).not_to be_nil
      end
    end

    # long descriptions
    it 'has full display' do
      described_class.e_types.keys[0..11].each do |type|
        create("#{type}_entity".to_sym)
        expect(described_class.public_send(type).first.full_display).not_to be_nil
      end
    end
  end

  context 'when entity info is complete - short display' do
    it 'has short display - attendance' do
      entity = create(:attendance_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(4)
      expect(doc.xpath('//strong').count).to eq(4)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq("#{entity.event_types.map(&:titleize).join(',')}, #{sanitize(strip_tags(entity.description))}")
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.attended_with.to_sentence)))
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.place)))
      expect(sanitize(doc.xpath('//p')[2].text)).to include(entity.years.first.to_s)
      expect(sanitize(doc.xpath('//p')[3].text)).to include(sanitize(strip_tags(entity.directors.first)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq(entity.event_types.map(&:titleize).join(','))
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Attended with')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Place, Date')
      expect(sanitize(doc.xpath('//strong')[3].text)).to eq('Director(s)')
    end

    it 'has short display - music' do
      entity = create(:music_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(3)
      expect(doc.xpath('//strong').count).to eq(3)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.composers.first)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Composer(s)')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Title')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Description')
    end

    it 'has short display - organization' do
      entity = create(:organization_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(2)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has short display - person' do
      entity = create(:person_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(2)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq("#{sanitize(strip_tags(entity.first_name))} #{sanitize(strip_tags(entity.last_name))}, #{entity.life_dates}")
      expect(sanitize(doc.xpath('//p')[1].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq("#{sanitize(strip_tags(entity.first_name))} #{sanitize(strip_tags(entity.last_name))}, #{entity.life_dates}")
    end

    it 'has short display - place' do
      entity = create(:place_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(2)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has short display - production' do
      entity = create(:production_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(4)
      expect(doc.xpath('//strong').count).to eq(5)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.proposal)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.response)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(' / ')
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.directors.first)))
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.theater)))
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.city)))
      expect(sanitize(doc.xpath('//p')[3].text)).to include(entity.date_str)
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Proposal/Response')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Director(s)')
      expect(sanitize(doc.xpath('//strong')[3].text)).to eq('Theatre, City')
      expect(sanitize(doc.xpath('//strong')[4].text)).to eq('Date(s)')
    end

    it 'has short display - publication' do
      entity = create(:publication_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(4)
      expect(doc.xpath('//strong').count).to eq(4)
      entity.authors.each {|author| expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(author))) }
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.translators.to_sentence)))
      expect(sanitize(doc.xpath('//p')[3].text)).to include(sanitize(strip_tags(entity.publication_information)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Author')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Title')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Translator')
      expect(sanitize(doc.xpath('//strong')[3].text)).to eq('Publication')
    end

    it 'has short display - public_event' do
      entity = create(:public_event_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(2)
      expect(doc.xpath('//strong').count).to eq(2)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[1].text)).to eq(sanitize(strip_tags(entity.date_str)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq(sanitize(strip_tags(entity.date_str)))
    end

    it 'has short display - reading' do
      entity = create(:reading_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(3)
      expect(doc.xpath('//strong').count).to eq(3)
      entity.authors.each {|author| expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(author))) }
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.publication_information)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Author')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Title')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Publication')
    end

    it 'has short display - translating' do
      entity = create(:translating_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(3)
      expect(doc.xpath('//strong').count).to eq(4)
      entity.authors.each {|author| expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(author))) }
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      entity.translators.each {|translator| expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(translator))) }
      expect(sanitize(doc.xpath('//p')[1].text)).to include(entity.translated_into.titleize)
      expect(sanitize(doc.xpath('//p')[1].text)).to include(' by ')
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.translated_title)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Author')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Original Title')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Translated into')
      expect(sanitize(doc.xpath('//strong')[3].text)).to eq('Translated title')
    end

    it 'has short display - work_of_art' do
      entity = create(:work_of_art_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(4)
      expect(doc.xpath('//strong').count).to eq(4)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.artists.first)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//p')[3].text)).to include(sanitize(strip_tags(entity.owner_location)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Artist(s)')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Title')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Description')
      expect(sanitize(doc.xpath('//strong')[3].text)).to eq('Owner/location')
    end

    it 'has short display - writing' do
      entity = create(:writing_entity)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(4)
      expect(doc.xpath('//strong').count).to eq(4)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.proposal)))
      entity.translators.each {|translator| expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(translator))) }
      expect(sanitize(doc.xpath('//p')[3].text)).to include(sanitize(strip_tags(entity.date_str)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Proposal/Response')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Translator')
      expect(sanitize(doc.xpath('//strong')[3].text)).to eq('Date')
    end
  end

  context 'when entity info is partial - short dispalys' do
    it 'does not show life dates - person' do
      entity = create(:person_entity, life_dates: nil)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(2)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq("#{sanitize(strip_tags(entity.first_name))} #{sanitize(strip_tags(entity.last_name))}")
      expect(sanitize(doc.xpath('//p')[1].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq("#{sanitize(strip_tags(entity.first_name))} #{sanitize(strip_tags(entity.last_name))}")
    end

    it 'does not show response or directors/theater/city - production' do
      entity = create(:production_entity, directors: nil, response: nil)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(4)
      expect(doc.xpath('//strong').count).to eq(4)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(sanitize(strip_tags(entity.proposal)))
      expect(sanitize(doc.xpath('//p')[1].text)).not_to include(' / ')
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.city)))
      expect(sanitize(doc.xpath('//p')[3].text)).to include(entity.date_str)
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Proposal')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Theatre, City')
      expect(sanitize(doc.xpath('//strong')[3].text)).to eq('Date(s)')
    end

    it 'does not show authors or translators - translating' do
      entity = create(:translating_entity, authors: nil, translators: nil)
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(3)
      expect(doc.xpath('//strong').count).to eq(3)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//p')[1].text)).to include(entity.translated_into.titleize)
      expect(sanitize(doc.xpath('//p')[1].text)).not_to include(' by ')
      expect(sanitize(doc.xpath('//p')[2].text)).to include(sanitize(strip_tags(entity.translated_title)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Original Title')
      expect(sanitize(doc.xpath('//strong')[1].text)).to eq('Translated into')
      expect(sanitize(doc.xpath('//strong')[2].text)).to eq('Translated title')
    end
  end

  context 'when entity has minimal properties' do
    it 'has minimal short display - attendance' do
      entity = described_class.create(
        e_type: 'attendance',
        event_types: [Faker::TvShows::RuPaul.queen],
        description: Faker::Hipster.sentence.gsub!(/[^0-9A-Za-z\s]/, '')
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq("#{entity.event_types.map(&:titleize).join(',')}, #{sanitize(strip_tags(entity.description))}")
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq(entity.event_types.map(&:titleize).join(','))
    end

    it 'has minimal short display - music' do
      entity = described_class.create(
        e_type: 'music',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
    end

    it 'has minimal short display - organization' do
      entity = described_class.create(
        e_type: 'organization',
        label: Faker::Movies::HitchhikersGuideToTheGalaxy.planet
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal short display - person' do
      entity = described_class.create(
        e_type: 'person',
        first_name: 'Andre',
        last_name: '3000'
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq("#{entity.first_name} #{entity.last_name}")
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq("#{entity.first_name} #{entity.last_name}")
    end

    it 'has minimal short display - place' do
      entity = described_class.create(
        e_type: 'place',
        label: Faker::Movies::HitchhikersGuideToTheGalaxy.planet
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal short display - production' do
      entity = described_class.create(
        e_type: 'production',
        label: Faker::Movie.title
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
    end

    it 'has minimal short display - publication' do
      entity = described_class.create(
        e_type: 'publication',
        label: Faker::Book.publisher
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
    end

    it 'has minimal short display - public_event' do
      entity = described_class.create(
        e_type: 'public_event',
        label: Faker::Space.nasa_space_craft
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal short display - reading' do
      entity = described_class.create(
        e_type: 'reading',
        label: Faker::Book.title
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
    end

    it 'has minimal short display - translating' do
      entity = described_class.create(
        e_type: 'translating',
        label: Faker::Book.title
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Original Title')
    end

    it 'has minimal short display - work_of_art' do
      entity = described_class.create(
        e_type: 'work_of_art',
        label: Faker::Space.nasa_space_craft
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
    end

    it 'has minimal short display - writing' do
      entity = described_class.create(
        e_type: 'writing',
        label: Faker::Space.nasa_space_craft
      )
      doc = Nokogiri::HTML5 entity.short_display
      expect(doc.xpath('//p').count).to eq(1)
      expect(doc.xpath('//strong').count).to eq(1)
      expect(sanitize(doc.xpath('//p')[0].text)).to include(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//strong')[0].text)).to eq('Title')
    end
  end

  context 'when entity info is complete - full display' do
    it 'has full display - attendance' do
      entity = create(:attendance_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(7)
      expect(doc.xpath('//td').count).to eq(7)
      rows = [
        'Description',
        'Alternate Name(s)',
        'Director(s)',
        'Performed by',
        'Attended with',
        'Place, Date',
        'Notes'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(entity.alternate_names.join(', '))
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(sanitize(strip_tags(entity.directors.first)))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.performed_by.to_sentence)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.attended_with.to_sentence)))
      expect(sanitize(doc.xpath('//td')[5].text)).to eq(sanitize(strip_tags("#{entity.place} #{entity.years.first}")))
      expect(sanitize(doc.xpath('//td')[6].text)).to eq(sanitize(strip_tags(entity.notes)))
    end

    it 'has full display - music' do
      entity = create(:music_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(7)
      expect(doc.xpath('//td').count).to eq(7)
      expect(doc.xpath('//a').count).to eq(entity.links.count)
      rows = [
        'Composer(s)',
        'Title',
        'Alternate Title(s)',
        'Description',
        'Performed by',
        'Notes',
        'See Also'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.composers.first)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(entity.alternate_names.join(', '))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.performed_by.to_sentence)))
      expect(sanitize(doc.xpath('//td')[5].text)).to eq(sanitize(strip_tags(entity.notes)))
      expect(doc.xpath('//a').map {|link| link.attributes['href'].value }.sort).to eq(entity.links.sort)
      expect(doc.xpath('//a').map {|link| link.attributes['target'].value }.uniq).to eq(['_blank'])
      expect(doc.xpath('//a').map {|link| link.attributes['rel'].value }.uniq).to eq(['noopener'])
    end

    it 'has full display - organization' do
      entity = create(:organization_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(5)
      expect(doc.xpath('//td').count).to eq(5)
      rows = [
        'Name',
        'Description',
        'Alternate Name(s)',
        'Profile',
        'Notes'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(entity.alternate_names.join(', '))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.profile)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.notes)))
    end

    it 'has full display - person' do
      entity = create(:person_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(6)
      expect(doc.xpath('//td').count).to eq(6)
      expect(doc.xpath('//a').count).to eq(entity.links.count)
      rows = [
        'Name',
        'Alternative Name(s)',
        'Life Dates',
        'Description',
        'Profile',
        'See Also'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags("#{entity.first_name} #{entity.last_name}")))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(entity.alternate_names.join(', '))
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(sanitize(strip_tags(entity.life_dates)))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.profile)))
      expect(doc.xpath('//a').map {|link| link.attributes['href'].value }.sort).to eq(entity.links.sort)
      expect(doc.xpath('//a').map {|link| link.attributes['target'].value }.uniq).to eq(['_blank'])
      expect(doc.xpath('//a').map {|link| link.attributes['rel'].value }.uniq).to eq(['noopener'])
    end

    it 'has full display - place' do
      entity = create(:place_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(3)
      expect(doc.xpath('//td').count).to eq(3)
      expect(doc.xpath('//a').count).to eq(entity.links.count)
      rows = [
        'Name',
        'Description',
        'See Also'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(doc.xpath('//td')[2].xpath('//a').map {|link| link.attributes['href'].value }.sort).to eq(entity.links.sort)
      expect(doc.xpath('//td')[2].xpath('//a').map {|link| link.attributes['target'].value }.uniq).to eq(['_blank'])
      expect(doc.xpath('//td')[2].xpath('//a').map {|link| link.attributes['rel'].value }.uniq).to eq(['noopener'])
    end

    it 'has full display - production' do
      entity = create(:production_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(11)
      expect(doc.xpath('//td').count).to eq(11)
      rows = [
        'Title',
        'Proposal',
        'Response',
        'Reason',
        'Date(s)',
        'Director(s)',
        'Cast',
        'Personnel',
        'Theatre, City',
        'Notes',
        'See Also'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(doc.xpath('//table//tbody//tr[2]//td[1]').text).to eq(entity.proposal)
      expect(doc.xpath('//table//tbody//tr[2]//td[2]').text).to eq(entity.response)
      expect(doc.xpath('//table//tbody//tr[2]//td[3]').text).to eq(entity.reason)
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.date_str)))
      expect(sanitize(doc.xpath('//td')[5].text)).to eq(sanitize(strip_tags(entity.directors.first)))
      expect(sanitize(doc.xpath('//td')[6].text)).to eq(sanitize(strip_tags(entity.cast.to_sentence)))
      expect(sanitize(doc.xpath('//td')[7].text)).to eq(sanitize(strip_tags(entity.personnel.to_sentence)))
      expect(sanitize(doc.xpath('//td')[8].text)).to include(sanitize(strip_tags(entity.theater)))
      expect(sanitize(doc.xpath('//td')[8].text)).to include(sanitize(strip_tags(entity.city)))
      expect(sanitize(doc.xpath('//td')[9].text)).to eq(sanitize(strip_tags(entity.notes)))
      expect(doc.xpath('//a').map {|link| link.attributes['href'].value }.sort).to eq(entity.links.sort)
      expect(doc.xpath('//a').map {|link| link.attributes['target'].value }.uniq).to eq(['_blank'])
      expect(doc.xpath('//a').map {|link| link.attributes['rel'].value }.uniq).to eq(['noopener'])
    end

    it 'has full display - publication' do
      entity = create(:publication_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(5)
      expect(doc.xpath('//td').count).to eq(5)
      rows = %w[
        Author
        Title
        Translator
        Publication
        Notes
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.authors.join(', '))))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(sanitize(strip_tags(entity.translators.join(', '))))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.publication_information)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.notes)))
    end

    it 'has full display - public_event' do
      entity = create(:public_event_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(3)
      expect(doc.xpath('//td').count).to eq(3)
      rows = [
        'Description',
        'Date',
        'See Also'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(sanitize(strip_tags(entity.date_str)))
      expect(doc.xpath('//td')[2].xpath('//a').map {|link| link.attributes['href'].value }.sort).to eq(entity.links.sort)
      expect(doc.xpath('//td')[2].xpath('//a').map {|link| link.attributes['target'].value }.uniq).to eq(['_blank'])
      expect(doc.xpath('//td')[2].xpath('//a').map {|link| link.attributes['rel'].value }.uniq).to eq(['noopener'])
    end

    it 'has full display - reading' do
      entity = create(:reading_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(4)
      expect(doc.xpath('//td').count).to eq(4)
      rows = %w[
        Author
        Title
        Publication
        Notes
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.authors.join(', '))))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(sanitize(strip_tags(entity.publication_information)))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.notes)))
    end

    it 'has full display - translating' do
      entity = create(:translating_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(5)
      expect(doc.xpath('//td').count).to eq(5)
      rows = [
        'Original Title',
        'Author',
        'Translated into',
        'Translated Title',
        'Publication/Production'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(entity.authors.join(', '))
      expect(sanitize(doc.xpath('//td')[2].text)).to include(sanitize(strip_tags(entity.translated_into.titleize)))
      expect(sanitize(doc.xpath('//td')[2].text)).to include(entity.translators.join(', '))
      expect(sanitize(doc.xpath('//td')[2].text)).to include(' by ')
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.translated_title)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.notes)))
    end

    it 'has full display - work_of_art' do
      entity = create(:work_of_art_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(9)
      expect(doc.xpath('//td').count).to eq(9)
      rows = [
        'Artist(s)',
        'Artist Alternative Name(s)',
        'Title',
        'Alternative Title(s)',
        'Description',
        'Ownership and Location',
        'Current Ownership and Location',
        'Notes',
        'See Also'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.artists.first)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(entity.artist_alternate_spellings.join(', '))
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.alternate_names.join(', '))))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.description)))
      expect(sanitize(doc.xpath('//td')[5].text)).to eq(sanitize(strip_tags(entity.owner_location)))
      expect(sanitize(doc.xpath('//td')[6].text)).to eq(sanitize(strip_tags(entity.owner_location_current)))
      expect(sanitize(doc.xpath('//td')[7].text)).to eq(sanitize(strip_tags(entity.notes)))
      expect(doc.xpath('//td')[8].xpath('//a').map {|link| link.attributes['href'].value }.sort).to eq(entity.links.sort)
      expect(doc.xpath('//td')[8].xpath('//a').map {|link| link.attributes['target'].value }.uniq).to eq(['_blank'])
      expect(doc.xpath('//td')[8].xpath('//a').map {|link| link.attributes['rel'].value }.uniq).to eq(['noopener'])
    end

    it 'has full display - writing' do
      entity = create(:writing_entity)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(6)
      expect(doc.xpath('//td').count).to eq(6)
      rows = [
        'Title',
        'Proposal/Response',
        'Date',
        'Notes',
        'Archival Information',
        'See Also'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(sanitize(strip_tags(entity.proposal)))
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(sanitize(strip_tags(entity.date_str)))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.notes)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.publication_information)))
      expect(doc.xpath('//td')[5].xpath('//a').map {|link| link.attributes['href'].value }.sort).to eq(entity.links.sort)
      expect(doc.xpath('//td')[5].xpath('//a').map {|link| link.attributes['target'].value }.uniq).to eq(['_blank'])
      expect(doc.xpath('//td')[5].xpath('//a').map {|link| link.attributes['rel'].value }.uniq).to eq(['noopener'])
    end
  end

  context 'when entity info is partial - full dispalys' do
    it 'has partial full display - production' do
      entity = create(:production_entity, response: nil, reason: nil)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(9)
      expect(doc.xpath('//td').count).to eq(9)
      rows = [
        'Title',
        'Proposal',
        'Date(s)',
        'Director(s)',
        'Cast',
        'Personnel',
        'Theatre, City',
        'Notes',
        'See Also'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(entity.proposal)
      expect(sanitize(doc.xpath('//td')[2].text)).to eq(sanitize(strip_tags(entity.date_str)))
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.directors.first)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.cast.to_sentence)))
      expect(sanitize(doc.xpath('//td')[5].text)).to eq(sanitize(strip_tags(entity.personnel.to_sentence)))
      expect(sanitize(doc.xpath('//td')[6].text)).to include(sanitize(strip_tags(entity.theater)))
      expect(sanitize(doc.xpath('//td')[6].text)).to include(sanitize(strip_tags(entity.city)))
      expect(sanitize(doc.xpath('//td')[7].text)).to eq(sanitize(strip_tags(entity.notes)))
      expect(doc.xpath('//tr[9]//td[1]//a').map {|link| link.attributes['href'].value }.sort).to eq(entity.links.sort)
      expect(doc.xpath('//tr[9]//td[1]//a').map {|link| link.attributes['target'].value }.uniq).to eq(['_blank'])
      expect(doc.xpath('//tr[9]//td[1]//a').map {|link| link.attributes['rel'].value }.uniq).to eq(['noopener'])
    end

    it 'has partial without translated into - full display - translating' do
      entity = create(:translating_entity, translated_into: nil)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(5)
      expect(doc.xpath('//td').count).to eq(5)
      rows = [
        'Original Title',
        'Author',
        'Translator',
        'Translated Title',
        'Publication/Production'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(entity.authors.join(', '))
      expect(sanitize(doc.xpath('//td')[2].text)).to include(entity.translators.join(', '))
      expect(sanitize(doc.xpath('//td')[2].text)).not_to include(' by ')
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.translated_title)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.notes)))
    end

    it 'has partial without translators - full display - translating' do
      entity = create(:translating_entity, translators: nil)
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(5)
      expect(doc.xpath('//td').count).to eq(5)
      rows = [
        'Original Title',
        'Author',
        'Translated into',
        'Translated Title',
        'Publication/Production'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
      expect(sanitize(doc.xpath('//td')[1].text)).to eq(entity.authors.join(', '))
      expect(sanitize(doc.xpath('//td')[2].text)).to include(sanitize(strip_tags(entity.translated_into.titleize)))
      expect(sanitize(doc.xpath('//td')[2].text)).not_to include(' by ')
      expect(sanitize(doc.xpath('//td')[3].text)).to eq(sanitize(strip_tags(entity.translated_title)))
      expect(sanitize(doc.xpath('//td')[4].text)).to eq(sanitize(strip_tags(entity.notes)))
    end
  end

  context 'when entity has minimal properties - full dispalys' do
    it 'has minimal full display - attendance' do
      entity = described_class.create(
        label: Faker::Music::Prince.song,
        e_type: 'attendance'
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to be_zero
      expect(doc.xpath('//td').count).to be_zero
    end

    it 'has minimal full display - music' do
      entity = described_class.create(
        e_type: 'music',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      expect(doc.xpath('//a').count).to be_zero
      rows = [
        'Title'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal full display - organization' do
      entity = described_class.create(
        e_type: 'organization',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      rows = [
        'Name'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal full display - person' do
      entity = described_class.create(
        e_type: 'person',
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      expect(doc.xpath('//a').count).to be_zero
      rows = [
        'Name'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags("#{entity.first_name} #{entity.last_name}")))
    end

    it 'has minimal full display - place' do
      entity = described_class.create(
        e_type: 'place',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      rows = [
        'Name'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal full display - production' do
      entity = described_class.create(
        e_type: 'production',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      expect(doc.xpath('//a').count).to be_zero
      rows = [
        'Title'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal full display - publication' do
      entity = described_class.create(
        e_type: 'publication',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      rows = %w[Title]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal full display - public_event' do
      entity = described_class.create(
        e_type: 'public_event',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to be_zero
      expect(doc.xpath('//td').count).to be_zero
    end

    it 'has minimal full display - reading' do
      entity = described_class.create(
        e_type: 'reading',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      rows = %w[Title]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal full display - translating' do
      entity = described_class.create(
        e_type: 'translating',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      rows = [
        'Original Title'
      ]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal full display - work_of_art' do
      entity = described_class.create(
        e_type: 'work_of_art',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      expect(doc.xpath('//a').count).to be_zero
      rows = %w[Title]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end

    it 'has minimal full display - writing' do
      entity = described_class.create(
        e_type: 'writing',
        label: Faker::Music::Prince.song
      )
      doc = Nokogiri::HTML5 entity.full_display
      expect(doc.xpath('//th').count).to eq(1)
      expect(doc.xpath('//td').count).to eq(1)
      expect(doc.xpath('//a').count).to be_zero
      rows = %w[Title]
      expect(doc.xpath('//th').map(&:text)).to eq(rows)
      expect(sanitize(doc.xpath('//td')[0].text)).to eq(sanitize(strip_tags(entity.label)))
    end
  end
end

# rubocop:enable Layout/LineLength

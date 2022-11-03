# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Merge do
  it 'merges entity when given a legacy_pk' do
    discard = create(:place_entity)
    keep = create(:place_entity)

    create_list(:letter, 3, entities: [discard])
    create_list(:letter, 2, destinations: [discard])
    create_list(:letter, 1, origins: [discard])
    create_list(:letter, 3, senders: [discard])
    create_list(:letter, 2, recipients: [discard])

    create_list(:letter, 1, entities: [keep])
    create_list(:letter, 4, destinations: [keep])
    create_list(:letter, 2, origins: [keep])
    create_list(:letter, 1, senders: [keep])
    create_list(:letter, 3, recipients: [keep])

    expect(discard.letters_sent_to.count).to eq(2)
    expect(discard.letters_sent_from.count).to eq(1)
    expect(discard.letters_sent.count).to eq(3)
    expect(discard.letters_received.count).to eq(2)
    expect(discard.letters.first.entities).to include discard
    expect(discard.letters.first.entities).not_to include keep

    merge_options = [
      {
        keep: keep.legacy_pk,
        discard: discard.legacy_pk,
        type: 'place'
      }
    ]

    described_class.new(merge_options)

    keep.reload

    expect(Letter.count).to eq(22)
    expect(keep.letters.count).to eq(4)
    expect(keep.letters_sent_to.count).to eq(6)
    expect(keep.letters_sent_from.count).to eq(3)
    expect(keep.letters_sent.count).to eq(4)
    expect(keep.letters_received.count).to eq(5)
    expect(keep.letters.first.entities).to include keep
    expect(keep.letters.first.entities).not_to include discard
  end

  it 'merges entity when given UUIDs' do
    discard = create(:place_entity)
    keep = create(:person_entity)

    create_list(:letter, 1, entities: [discard])
    create_list(:letter, 4, destinations: [discard])
    create_list(:letter, 2, origins: [discard])
    create_list(:letter, 1, senders: [discard])
    create_list(:letter, 3, recipients: [discard])

    create_list(:letter, 3, entities: [keep])
    create_list(:letter, 2, destinations: [keep])
    create_list(:letter, 1, origins: [keep])
    create_list(:letter, 3, senders: [keep])
    create_list(:letter, 2, recipients: [keep])

    expect(discard.letters_sent_to.count).to eq(4)
    expect(discard.letters_sent_from.count).to eq(2)
    expect(discard.letters_sent.count).to eq(1)
    expect(discard.letters_received.count).to eq(3)

    merge_options = [
      {
        keep: keep.id,
        discard: discard.id
      }
    ]

    described_class.new(merge_options)

    keep.reload

    expect(Letter.count).to eq(22)
    expect(keep.letters.count).to eq(4)
    expect(keep.letters_sent_to.count).to eq(6)
    expect(keep.letters_sent_from.count).to eq(3)
    expect(keep.letters_sent.count).to eq(4)
    expect(keep.letters_received.count).to eq(5)
  end
end

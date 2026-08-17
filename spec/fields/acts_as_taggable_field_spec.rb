# frozen_string_literal: true

require 'rails_helper'
require 'administrate/field/text'

RSpec.describe ActsAsTaggableField do
  describe '#attribute' do
    it 'singularizes the underlying attribute and appends _list' do
      field = described_class.new(:tags, [], nil)
      expect(field.attribute).to eq('tag_list')
    end
  end

  describe '.permitted_attribute' do
    it 'singularizes the attribute and appends _list' do
      expect(described_class.permitted_attribute(:tags)).to eq('tag_list')
    end
  end

  describe '#tags' do
    it 'returns the raw data' do
      field = described_class.new(:tags, %w[a b], nil)
      expect(field.tags).to eq(%w[a b])
    end

    it 'fetches real Tag records from the resource when constructed the way Administrate ' \
       'actually builds fields (data: nil, resource: given), not tag_list name strings' do
      # Administrate::Field::Base#read_value calls `resource.try(attribute)` when data is
      # nil - and that `attribute` call is polymorphic, landing on this class's own
      # #attribute override (returns "tag_list") rather than the raw :tags attribute this
      # field was constructed with. A prior version of #read_value used that overridden
      # #attribute directly, so this fetched mention.tag_list (tag-name strings) instead of
      # mention.tags (real Tag records), and _show.html.erb's `tag.name` raised
      # NoMethodError on a String. Only reproducible by exercising the real construction
      # path (data: nil) - constructing with data already populated skips read_value
      # entirely, which is why this went undetected until manual browser verification.
      mention = create(:mention, tag_list: 'battle, correspondence')
      field = described_class.new(:tags, nil, nil, resource: mention)

      expect(field.tags).to all(be_a(ActsAsTaggableOn::Tag))
      expect(field.tags.map(&:name)).to contain_exactly('battle', 'correspondence')
    end
  end

  describe '#delimited' do
    it 'joins tag names with a comma and space' do
      mention = create(:mention, tag_list: 'foo, bar')
      field = described_class.new(:tags, mention.tags, nil)

      expect(field.delimited).to eq('foo, bar')
    end

    it 'returns an empty string when there are no tags' do
      field = described_class.new(:tags, [], nil)
      expect(field.delimited).to eq('')
    end
  end

  describe '#truncate' do
    it 'truncates the delimited tag list to the default length' do
      mention = create(:mention, tag_list: 'a' * 60)
      field = described_class.new(:tags, mention.tags, nil)

      expect(field.truncate.length).to eq(50)
    end
  end

  describe '#tag_options' do
    it 'lists tags used in the tags context, sorted by name' do
      create(:mention, tag_list: 'zebra, apple')
      field = described_class.new(:tags, [], nil)

      expect(field.tag_options).to eq(
        [{ text: 'apple', value: 'apple' }, { text: 'zebra', value: 'zebra' }]
      )
    end
  end
end

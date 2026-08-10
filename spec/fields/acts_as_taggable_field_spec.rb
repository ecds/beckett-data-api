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

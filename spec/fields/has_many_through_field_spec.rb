# frozen_string_literal: true

require 'rails_helper'
# In a full app boot Administrate's engine loads its own Field classes before any
# app/fields/*.rb file is ever referenced, but running this spec in isolation can
# autoload HasManyThroughField (which inherits from Administrate::Field::HasMany)
# before that happens.
require 'administrate/field/has_many'

RSpec.describe HasManyThroughField do
  let(:letter) { Letter.new }

  def field_for(options)
    described_class.new(:entities, nil, nil, options.merge(resource: letter))
  end

  describe '#to_s' do
    it 'returns the raw data' do
      field = described_class.new(:entities, %w[a b], nil, resource: letter)
      expect(field.to_s).to eq(%w[a b])
    end
  end

  describe '#associated_resource_options' do
    it 'scopes the search to options[:type] when given' do
      field = field_for(type: 'person')
      allow(Entity).to receive(:search).and_return([])

      field.associated_resource_options

      expect(Entity).to have_received(:search).with('*', load: false, where: { e_type: 'person' })
    end

    it 'does not scope the search when no type option is given' do
      field = field_for({})
      allow(Entity).to receive(:search).and_return([])

      field.associated_resource_options

      expect(Entity).to have_received(:search).with('*', load: false, where: {})
    end

    it 'does not ask Elasticsearch to sort - e_type has no sortable mapping' do
      # Regression test: this field used to hardcode order: { e_type: :asc } in the
      # Searchkick query regardless of any order_by option, which raised
      # Searchkick::InvalidQueryError for every letter's entity picker (e_type isn't
      # mapped as sortable - see app/models/concerns/searchable.rb). Sorting now
      # happens in Ruby, after the results come back - see the next example.
      field = field_for(order_by: 'e_type')
      allow(Entity).to receive(:search).and_return([])

      field.associated_resource_options

      expect(Entity).to have_received(:search).with('*', load: false, where: {})
    end

    it 'sorts the results in Ruby by options[:order_by] when given' do
      person = instance_double(Entity, e_type: 'person', clean_label: 'B Person', id: '1')
      allow(person).to receive(:[]).with('_index').and_return('beckett_entities_test')
      place = instance_double(Entity, e_type: 'place', clean_label: 'A Place', id: '2')
      allow(place).to receive(:[]).with('_index').and_return('beckett_entities_test')
      field = field_for(order_by: 'e_type')
      allow(Entity).to receive(:search).and_return([person, place])

      # "person" sorts before "place" alphabetically (e < l at the second character)
      expect(field.associated_resource_options).to eq([['B Person', '1'], ['A Place', '2']])
    end

    it 'formats verbose entity results as "Type PK: Label"' do
      result = instance_double(Entity, e_type: 'person', legacy_pk: 42, clean_label: 'Beckett, Samuel', id: 'abc')
      allow(result).to receive(:[]).with('_index').and_return('beckett_entities_test')
      field = field_for(verbose_option: true)
      allow(Entity).to receive(:search).and_return([result])

      expect(field.associated_resource_options).to eq([['Person 42: Beckett, Samuel', 'abc']])
    end

    it 'formats non-verbose results as [label, id]' do
      result = instance_double(Entity, clean_label: 'Paris', id: 'xyz')
      allow(result).to receive(:[]).with('_index').and_return('beckett_places_test')
      field = field_for({})
      allow(Entity).to receive(:search).and_return([result])

      expect(field.associated_resource_options).to eq([%w[Paris xyz]])
    end

    it 'formats verbose results as [label, id] when the result is not from the entities index' do
      result = instance_double(Entity, clean_label: 'Some Repository', id: 'def')
      allow(result).to receive(:[]).with('_index').and_return('beckett_repositories_test')
      field = field_for(verbose_option: true)
      allow(Entity).to receive(:search).and_return([result])

      expect(field.associated_resource_options).to eq([['Some Repository', 'def']])
    end
  end
end

# frozen_string_literal: true

# Covers the common `display_resource` override pattern used by most dashboards
# (app/dashboards/*.rb): a simple, resource-specific string formatter with no other
# logic worth a bespoke spec.
#
# Required parameters:
#   factory:  the FactoryBot factory to build a resource with
#   expected: ->(resource) { "expected display string" }
RSpec.shared_examples 'a dashboard with display_resource' do |factory:, expected:|
  describe '#display_resource' do
    it 'formats the resource for display' do
      resource = create(factory)

      expect(described_class.new.display_resource(resource)).to eq(expected.call(resource))
    end
  end
end

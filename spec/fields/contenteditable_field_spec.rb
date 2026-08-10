# frozen_string_literal: true

require 'rails_helper'
require 'administrate/field/base'

RSpec.describe ContenteditableField do
  describe '#to_s' do
    it 'returns the raw data unchanged, with no sanitization' do
      html = '<p>raw <script>alert(1)</script> html</p>'
      field = described_class.new(:content, html, nil)

      expect(field.to_s).to eq(html)
    end
  end
end

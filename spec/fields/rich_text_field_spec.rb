# frozen_string_literal: true

require 'rails_helper'
require 'administrate/field/base'

RSpec.describe RichTextField do
  describe '#to_s' do
    it 'permits the allowed tags and attributes' do
      html = '<p><strong>Bold</strong> <a href="/x" class="link">text</a></p>'
      field = described_class.new(:description, html, nil)

      expect(field.to_s).to eq(html)
    end

    it 'strips the script tag itself (its text content survives as inert text, same as Rails::Html::Sanitizer)' do
      field = described_class.new(:description, '<p>safe</p><script>alert(1)</script>', nil)

      result = field.to_s

      expect(result).not_to include('<script')
      expect(result).to include('safe')
    end

    it 'strips event handler attributes like onclick' do
      field = described_class.new(:description, '<p onclick="alert(1)">click me</p>', nil)

      result = field.to_s

      expect(result).not_to include('onclick')
      expect(result).not_to include('alert(1)')
      expect(result).to include('click me')
    end

    it 'strips disallowed tags but keeps their text content' do
      field = described_class.new(:description, '<iframe src="https://evil.example"></iframe>plain text', nil)

      result = field.to_s

      expect(result).not_to include('<iframe')
      expect(result).not_to include('evil.example')
      expect(result).to include('plain text')
    end

    it 'strips javascript: hrefs' do
      field = described_class.new(:description, '<a href="javascript:alert(1)">click</a>', nil)

      result = field.to_s

      expect(result).not_to include('javascript:')
    end
  end
end

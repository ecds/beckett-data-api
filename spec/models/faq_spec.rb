# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Faq do
  it 'creates faqs in order' do
    create_list(:faq, 10)
    expect(described_class.all.map(&:position)).to eq((1..10).to_a)
  end

  it 'keeps position in sequence moving up in order' do
    create_list(:faq, 10)
    second = described_class.find_by(position: 2)
    second.update(position: 8)
    expect(second).to eq(described_class.find_by(position: 8))
    expect(described_class.all.map(&:position)).to eq((1..10).to_a)
  end

  it 'keeps position in sequence moving down in order' do
    create_list(:faq, 10)
    seventh = described_class.find_by(position: 7)
    seventh.update(position: 2)
    expect(seventh).to eq(described_class.find_by(position: 2))
    expect(described_class.all.map(&:position)).to eq((1..10).to_a)
  end

  it 'keeps last position equal to total count' do
    create_list(:faq, 10)
    third = described_class.find_by(position: 3)
    third.update(position: 1111)
    expect(third.position).to eq(10)
    expect(described_class.all.map(&:position)).to eq((1..10).to_a)
  end

  it 'keeps first position equal to one' do
    create_list(:faq, 10)
    fourth = described_class.find_by(position: 4)
    fourth.update(position: 0)
    expect(fourth.position).to eq(1)
    expect(described_class.all.map(&:position)).to eq((1..10).to_a)
  end
end

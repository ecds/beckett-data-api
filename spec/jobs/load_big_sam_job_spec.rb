# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LoadBigSamJob do
  it "parses a name starting with O'" do
    person = described_class.get_person('Seumas O’Sullivan')
    expect(person.last_name).to eq('O’Sullivan')
  end

  it 'parses a name that starts with Mc' do
    person = described_class.get_person('Donald McWhinnie')
    expect(person.last_name).to eq('McWhinnie')
  end

  it 'parses a name that starts with Mac' do
    person = described_class.get_person('Gloria MacGowran'.strip.titleize)
    expect(person.last_name).to eq('MacGowran')
  end

  it 'parses a name that starts with mac in a name' do
    person = described_class.mac_name?(Namae.parse('Pauline Maccaulay McWhinnie').first)
    expect(person.given).to eq('Pauline Maccaulay'.strip.titleize)
    expect(person.family).to eq('McWhinnie')
  end

  it 'parses a name that starts with Van preceeding the last name' do
    person = described_class.get_person('Jacoba Van Velde'.strip.titleize)
    expect(person.last_name).to eq('Van Velde')
  end

  it 'parses a name that starts with Von preceeding the last name' do
    person = described_class.get_person('Rudolf Von Abele'.strip.titleize)
    expect(person.last_name).to eq('von Abele')
  end
end

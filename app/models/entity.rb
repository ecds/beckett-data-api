# frozen_string_literal: true

class Entity < ApplicationRecord
  include Searchable

  has_many :mentions, dependent: :destroy
  has_many :letters, through: :mentions, source: :letter

  has_many :letter_destinations, dependent: :destroy
  has_many :letters_sent_to, through: :letter_destinations, source: :letter

  has_many :letter_senders, dependent: :destroy
  has_many :letters_sent, through: :letter_senders, source: :letter

  has_many :letter_origins, dependent: :destroy
  has_many :letters_sent_from, through: :letter_origins, source: :letter

  has_many :letter_recipients, dependent: :destroy
  has_many :letters_received, through: :letter_recipients, source: :letter

  enum e_type: {
    person: 0,
    organization: 1,
    place: 2,
    production: 3,
    writing: 4,
    translating: 5,
    reading: 6,
    attendance: 7,
    music: 8,
    publication: 9,
    public_event: 10,
    work_of_art: 11
  }

  def all_letters
    letters + letters_sent_to + letters_sent + letters_sent_from + letters_received
  end

  def public_letters_hash
    public_letters = letters._public + letters_sent_to._public + letters_sent._public + letters_sent_from._public + letters_received._public
    # public_letters.reject! {|l| l.recipients.count.zero? }
    public_letters.uniq.sort_by(&:date).map {|letter|
      {
        id: letter.id,
        date: letter.date,
        recipients: letter.recipients.map {|r|
                      {
                        id: r.id,
                        name: r.label
                      }
                    }
      }
    }
  end
end

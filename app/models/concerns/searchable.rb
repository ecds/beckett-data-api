# frozen_string_literal: true

# Common stuff for indexing
module Searchable
  extend ActiveSupport::Concern

  included do
    # after_save :reindex_class
    # searchkick callbacks: :async, word_start: [:clean_label], suggest: [:label]
    searchkick callbacks: false
  end
end

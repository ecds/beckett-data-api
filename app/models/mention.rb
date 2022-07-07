# frozen_string_literal: true

class Mention < ApplicationRecord
  belongs_to :entity
  belongs_to :letter

  Entity.e_types.each_key do |type|
    scope type.to_sym, lambda {
      joins(:entity)
        .where(
          'entities.e_type': Entity.e_types[type.to_sym]
        )
    }
  end
end

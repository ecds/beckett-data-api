# frozen_string_literal: true

class Faq < ApplicationRecord
  before_save :initial_position
  after_save :update_position

  default_scope { order('position') }

  private

  def initial_position
    self.position = if position.nil?
                      Faq.count + 1
                    elsif position.zero?
                      1
                    else
                      [position, Faq.count].min
                    end
    # updateif position > Faq.count
  end

  def update_position
    old_pos, new_pos = previous_changes[:position]
    return if old_pos.nil? || new_pos.nil?

    if old_pos > new_pos
      replacing = Faq.where("position >= #{new_pos}").where("position < #{old_pos}").where.not(id:).reverse
      replacing.each {|faq| faq.update(position: faq.position + 1) }
    elsif old_pos < new_pos
      replacing = Faq.where("position <= #{new_pos}").where("position > #{old_pos}").where.not(id:)
      replacing.each {|faq| faq.update(position: faq.position - 1) }
    end
  end
end

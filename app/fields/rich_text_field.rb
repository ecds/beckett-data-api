# frozen_string_literal: true

require 'administrate/field/base'

class RichTextField < Administrate::Field::Base
  include ActionView::Helpers::SanitizeHelper

  def to_s
    sanitize data
  end
end

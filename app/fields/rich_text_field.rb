# frozen_string_literal: true

require 'administrate/field/base'

class RichTextField < Administrate::Field::Base
  include ActionView::Helpers::SanitizeHelper

  def to_s
    sanitize(
      data,
      tags: %w[svg div strong p h1 h2 br a ul li em path],
      attributes: %w[href d fill viewbox role alt focusable stroke-width alt class aria-hidden height width xmlns
                     stroke]
    )
  end
end

require "administrate/field/base"

class ContenteditableField < Administrate::Field::Base
  def to_s
    data
  end
end

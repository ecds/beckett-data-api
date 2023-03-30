# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper

  primary_abstract_class

  class_attribute :url

  def url_path
    "/#{self.class.name.pluralize.downcase}/#{id}"
  end
end

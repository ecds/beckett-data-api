# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::Faqs' do
  it_behaves_like 'a routed admin dashboard',
                  factory: :faq,
                  index_helper: :admin_faqs_path,
                  show_helper: :admin_faq_path,
                  new_helper: :new_admin_faq_path,
                  edit_helper: :edit_admin_faq_path
end

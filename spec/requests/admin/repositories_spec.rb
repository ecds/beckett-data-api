# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::Repositories' do
  it_behaves_like 'a routed admin dashboard',
                  factory: :repository,
                  index_helper: :admin_repositories_path,
                  show_helper: :admin_repository_path,
                  new_helper: :new_admin_repository_path,
                  edit_helper: :edit_admin_repository_path
end

# frozen_string_literal: true

require 'rails_helper'

# BigSam#load_letters (app/models/big_sam.rb) destroys the record immediately after
# processing its upload (see LoadBigSamJob#perform), so a persisted BigSam essentially
# never exists to view/edit in practice - only index (which works with zero records) and
# new are meaningfully testable here.
RSpec.describe 'Admin::BigSams' do
  describe 'GET index' do
    it 'requires authentication' do
      get admin_big_sams_path
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      get admin_big_sams_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET new' do
    it 'renders successfully when authenticated' do
      get new_admin_big_sam_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end
end

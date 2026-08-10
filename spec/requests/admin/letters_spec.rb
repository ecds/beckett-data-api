# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::Letters' do
  describe 'GET index' do
    it 'requires authentication' do
      get admin_letters_path
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      create(:letter)
      get admin_letters_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end

    # LetterDashboard's index table renders COLLECTION_ATTRIBUTES (date/recipients/
    # entities) as columns, not the display_resource string - each row's link to
    # admin_letter_path(letter) is what reliably identifies which letter a row is.
    it 'includes letters within the given start_date/end_date range' do
      in_range = create(:letter, date: DateTime.new(1960, 6, 1), code: 'IN-RANGE')
      get admin_letters_path(start_date: '1960-01-01', end_date: '1960-12-31'), headers: admin_auth_headers
      expect(response.body).to include(admin_letter_path(in_range))
    end

    it 'excludes dated letters outside the given start_date/end_date range' do
      out_of_range = create(:letter, date: DateTime.new(1900, 1, 1), code: 'OUT-OF-RANGE')
      get admin_letters_path(start_date: '1960-01-01', end_date: '1960-12-31'), headers: admin_auth_headers
      expect(response.body).not_to include(admin_letter_path(out_of_range))
    end

    it 'always includes undated letters, regardless of the date range' do
      undated = create(:letter, date: nil, code: 'UNDATED')
      get admin_letters_path(start_date: '1960-01-01', end_date: '1960-12-31'), headers: admin_auth_headers
      expect(response.body).to include(admin_letter_path(undated))
    end

    it 'restores start_date/end_date from the referer when the request omits them' do
      in_range = create(:letter, date: DateTime.new(1960, 6, 1), code: 'IN-RANGE')
      out_of_range = create(:letter, date: DateTime.new(1900, 1, 1), code: 'OUT-OF-RANGE')
      referer = "#{admin_letters_url}?start_date=1960-01-01&end_date=1960-12-31"

      get admin_letters_path, headers: admin_auth_headers.merge('HTTP_REFERER' => referer)

      expect(response.body).to include(admin_letter_path(in_range))
      expect(response.body).not_to include(admin_letter_path(out_of_range))
    end

    it 'ignores the referer when it is not an admin/letters URL' do
      out_of_range = create(:letter, date: DateTime.new(1900, 1, 1), code: 'OUT-OF-RANGE')
      referer = "#{admin_entities_url}?start_date=1960-01-01&end_date=1960-12-31"

      get admin_letters_path, headers: admin_auth_headers.merge('HTTP_REFERER' => referer)

      expect(response.body).to include(admin_letter_path(out_of_range))
    end
  end

  describe 'GET show' do
    it 'renders successfully when authenticated' do
      letter = create(:letter)
      get admin_letter_path(letter), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET new' do
    it 'renders successfully when authenticated' do
      get new_admin_letter_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET edit' do
    it 'renders successfully when authenticated' do
      letter = create(:letter)
      get edit_admin_letter_path(letter), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'PATCH update' do
    # LetterDashboard::FORM_ATTRIBUTES is %i[entities content] (+ start_date, per
    # #permitted_attributes) - `content` is the only plain-text field actually
    # permitted through strong params here.
    it 'redirects to the resource by default' do
      letter = create(:letter)
      patch admin_letter_path(letter), params: { letter: { content: 'Updated content' } },
                                       headers: admin_auth_headers
      expect(response).to redirect_to(admin_letter_path(letter))
      expect(letter.reload.content).to eq('Updated content')
    end

    it 'does not redirect when redirect=no, but still persists the update' do
      letter = create(:letter)
      patch admin_letter_path(letter),
            params: { letter: { content: 'Updated content' }, redirect: 'no' },
            headers: admin_auth_headers
      expect(response).not_to have_http_status(:redirect)
      expect(letter.reload.content).to eq('Updated content')
    end
  end
end

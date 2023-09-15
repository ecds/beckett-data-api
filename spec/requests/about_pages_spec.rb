# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/about_pages', type: :request do
  let(:valid_attributes) { {} }

  let(:invalid_attributes) { {} }

  let(:valid_headers) { {} }

  describe 'GET /index' do
    it 'renders a successful response' do
      create(:about_page)
      get about_pages_url, headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'GET /about_page/' do
    it 'renders a not_implementd response' do
      about = create(:about_page)
      get about_page_url(about), as: :json
      expect(response).to be_successful
      expect(json[:title]).to eq(about.title)
      expect(json[:body]).to eq(about.body)
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'does not create a new AboutPage' do
        expect {
          post about_pages_url,
               params: { about: valid_attributes }, headers: valid_headers, as: :json
        }.not_to change(AboutPage, :count)
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      it 'does not update the requested about' do
        about = create(:about_page)
        patch about_page_url(about),
              params: { about: {} }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'does not destroy the requested about' do
      about = create(:about_page)
      expect {
        delete about_page_url(about), headers: valid_headers, as: :json
      }.not_to change(AboutPage, :count)
      expect(response).to have_http_status(:not_implemented)
    end
  end
end

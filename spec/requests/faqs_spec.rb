# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/faqs', type: :request do
  let(:valid_attributes) { {} }

  let(:invalid_attributes) { {} }

  let(:valid_headers) { {} }

  describe 'GET /index' do
    it 'renders a successful response' do
      create_list(:faq, 20)
      get faqs_url, headers: valid_headers, as: :json
      expect(response).to be_successful
      expect(json.count).to eq(20)
      expect(json.pluck(:position)).to eq((1..20).to_a)
    end
  end

  describe 'GET /show' do
    it 'renders a not_implementd response' do
      faq = create(:faq)
      get faq_url(faq), as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'does not create a new Faq' do
        expect {
          post faqs_url,
               params: { faq: valid_attributes }, headers: valid_headers, as: :json
        }.not_to change(Faq, :count)
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      it 'does not update the requested faq' do
        faq = create(:faq)
        patch faq_url(faq),
              params: { faq: {} }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'does not destroy the requested faq' do
      faq = create(:faq)
      expect {
        delete faq_url(faq), headers: valid_headers, as: :json
      }.not_to change(Faq, :count)
      expect(response).to have_http_status(:not_implemented)
    end
  end
end

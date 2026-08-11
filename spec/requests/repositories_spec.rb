# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/repositories' do
  describe 'GET /index' do
    it 'renders a successful response with all repositories' do
      create_list(:repository, 3)
      get repositories_url, as: :json
      expect(response).to be_successful
      expect(json.count).to eq(3)
    end
  end

  describe 'GET /show' do
    it 'renders the requested repository' do
      repository = create(:repository)
      get repository_url(repository), as: :json
      expect(response).to be_successful
      expect(json[:id]).to eq(repository.id)
      expect(json[:label]).to eq(repository.label)
    end

    it 'renders a not_found response for an unknown id' do
      get repository_url(SecureRandom.uuid), as: :json
      expect(response).to have_http_status(:not_found)
    end
  end

  # RepositoriesController only overrides index/show - create/update/destroy fall
  # through to ApplicationController's defaults, which all `head :not_implemented`.
  describe 'POST /create' do
    it 'does not create a new Repository' do
      expect {
        post repositories_url, params: { repository: { label: 'New Repository' } }, as: :json
      }.not_to change(Repository, :count)
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'PATCH /update' do
    it 'does not update the requested repository' do
      repository = create(:repository, label: 'Original')
      patch repository_url(repository), params: { repository: { label: 'Changed' } }, as: :json
      expect(response).to have_http_status(:not_implemented)
      expect(repository.reload.label).to eq('Original')
    end
  end

  describe 'DELETE /destroy' do
    it 'does not destroy the requested repository' do
      repository = create(:repository)
      expect {
        delete repository_url(repository), as: :json
      }.not_to change(Repository, :count)
      expect(response).to have_http_status(:not_implemented)
    end
  end
end

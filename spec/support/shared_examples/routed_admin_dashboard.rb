# frozen_string_literal: true

# Baseline smoke coverage for a routed Administrate dashboard: confirms index/show/new/edit
# all render successfully when authenticated, and that none of them are reachable without
# auth. This exists to catch broad Administrate API breakage (helper methods, template
# changes) across every live admin resource with minimal duplication - see
# spec/requests/admin/*_spec.rb for usage, and add resource-specific specs alongside for any
# custom controller/dashboard behavior.
#
# Route helpers are passed as symbols, not lambdas/procs: procs built at the
# `it_behaves_like` call site capture the wrong `self` (the example group class, not the
# running example instance), so calling them would raise NoMethodError. Calling them via
# `send` from inside this shared example's own `it` blocks resolves correctly instead.
#
# Required parameters:
#   factory:     the FactoryBot factory to build a resource with
#   index_helper: :admin_xyzs_path
#   show_helper:  :admin_xyz_path
#   new_helper:   :new_admin_xyz_path
#   edit_helper:  :edit_admin_xyz_path
RSpec.shared_examples 'a routed admin dashboard' do |factory:, index_helper:, show_helper:, new_helper:, edit_helper:|
  describe 'GET index' do
    it 'requires authentication' do
      get send(index_helper)
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      create(factory)
      get send(index_helper), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET show' do
    it 'requires authentication' do
      resource = create(factory)
      get send(show_helper, resource)
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      resource = create(factory)
      get send(show_helper, resource), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET new' do
    it 'renders successfully when authenticated' do
      get send(new_helper), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET edit' do
    it 'renders successfully when authenticated' do
      resource = create(factory)
      get send(edit_helper, resource), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end
end

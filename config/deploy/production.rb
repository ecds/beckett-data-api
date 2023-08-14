# frozen_string_literal: true

set :branch, 'develop'

# server '44.192.30.237', user: 'deploy', roles: %w{app db web}, primary: :my_value
role :app, %w[44.192.114.189], user: 'deploy'
role :web, %w[44.192.114.189], user: 'deploy'
role :db,  %w[44.192.114.189], user: 'deploy'

set :deploy_to, '/data/beckett'

set :ssh_options, {
  forward_agent: false,
  auth_methods: %w[publickey]
}

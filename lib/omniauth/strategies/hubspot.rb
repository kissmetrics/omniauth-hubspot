require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class HubSpot < OmniAuth::Strategies::OAuth2

      args [:client_id]

      option :name, "hubspot"

      option :client_options, {
        :site => 'https://app.hubspot.com',
        :authorize_url => '/auth/authenticate'
      }

    end
  end
end

OmniAuth.config.add_camelization 'hubspot', 'HubSpot'

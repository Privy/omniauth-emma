require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Emma < OmniAuth::Strategies::OAuth2
      option :name, "emma"

      option :client_options, {
        :site               => "https://api.e2ma.net",
        :authorize_url      => '/oauth/authorize',
        :request_token_url  => "/oauth/token"
      }

      uid { access_token.params['account_id'] }

    end
  end
end
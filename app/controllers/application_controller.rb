class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  TOKEN = 'some-secret'
  before_action :authenticate

   private
    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        token == TOKEN
      end
    end
end

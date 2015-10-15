class ApiController < ApplicationController
  protect_from_forgery with: :exception

  after_filter :add_allow_credentials_headers

  protected

  def add_allow_credentials_headers
    origin = request.headers['Origin'] || 'http://localhost:3000'
    response.headers['Access-Control-Allow-Origin'] = origin
  end
end

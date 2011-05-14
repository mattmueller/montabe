require 'forwardable'

module Montabe
  class Client
    extend Forwardable
    
    include Galleries
    
    def initialize(options={})
    end
    
    # Sets up the connection to be used for all requests based on options passed during initialization.
    
    def connection
      params = {}
      @connection ||= Faraday::Connection.new(:url => api_url, :params => params, :headers => default_headers) do |builder|
        builder.adapter Faraday.default_adapter
        builder.use Faraday::Response::Mashify
        builder.use Faraday::Response::ParseJson
      end
    end
    
    # Base URL for api requests.

    def api_url
      "http://demo.montabe.com"
    end

    # Helper method to return errors or desired response data as appropriate.
    #
    # Added just for convenience to avoid having to traverse farther down the response just to get to returned data.

    def return_error_or_body(response, response_body)
      response.body.meta.code == 200 ? response_body : response.body
    end
      
    private


      def default_headers
        headers = {
          :accept =>  'application/json',
          :user_agent => 'Ruby gem'
        }
      end

  end
end


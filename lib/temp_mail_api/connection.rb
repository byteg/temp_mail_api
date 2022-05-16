require 'faraday_middleware'
Dir[File.expand_path('../../faraday/*.rb', __FILE__)].each{|f| require f}

module TempMailApi
  module Connection
    private

    def connection(raw=false)
      headers = {
                  'X-RapidAPI-Host': host_header,
                  'X-RapidAPI-Key': access_token
                }

      options = {
        :headers => headers,
        :proxy => proxy,
        :url => endpoint,
      }.merge(connection_options)

      Faraday::Connection.new(options) do |connection|
        connection.use Faraday::Request::UrlEncoded
        connection.use Faraday::Response::Logger
        connection.use FaradayMiddleware::Mashify unless raw
        connection.use Faraday::Response::ParseJson if !raw && format == 'json'
        connection.adapter(adapter)
      end
    end
  end
end
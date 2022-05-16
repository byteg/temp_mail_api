require 'faraday'
require File.expand_path('../version', __FILE__)

module TempMailApi
  # Defines constants and methods related to configuration
  module Configuration
    # An array of valid keys in the options hash when configuring API
    VALID_OPTIONS_KEYS = [
      :access_token,
      :host_header,
      :adapter,
      :connection_options,
      :endpoint,
      :proxy,
      :format
    ].freeze

    # By default, don't set a user access token
    DEFAULT_ACCESS_TOKEN = ""

    DEFAULT_HOST_HEADER = "privatix-temp-mail-v1.p.rapidapi.com"

    # The adapter that will be used to connect if none is set
    #
    # @note The default faraday adapter is Net::HTTP.
    DEFAULT_ADAPTER = Faraday.default_adapter

    # By default, don't set any connection options
    DEFAULT_CONNECTION_OPTIONS = {}

    # The endpoint that will be used to connect if none is set
    #
    # @note There is no reason to use any other endpoint at this time
    DEFAULT_ENDPOINT = 'https://privatix-temp-mail-v1.p.rapidapi.com/request/'.freeze
    #DEFAULT_ENDPOINT = 'https://193.138.77.161'.freeze

    # By default, don't use a proxy server
    DEFAULT_PROXY = nil

    DEFAULT_FORMAT = "json"

    # @private
    attr_accessor *VALID_OPTIONS_KEYS

    # When this module is extended, set all configuration options to their default values
    def self.extended(base)
      base.reset
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    # Create a hash of options and their values
    def options
      VALID_OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    # Reset all configuration options to defaults
    def reset
      self.access_token       = DEFAULT_ACCESS_TOKEN
      self.host_header        = DEFAULT_HOST_HEADER
      self.adapter            = DEFAULT_ADAPTER
      self.connection_options = DEFAULT_CONNECTION_OPTIONS
      self.endpoint           = DEFAULT_ENDPOINT
      self.proxy              = DEFAULT_PROXY
      self.format             = DEFAULT_FORMAT
    end
  end
end

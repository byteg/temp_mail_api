require File.expand_path('../client/domains', __FILE__)

module TempMailApi
  class Client < API
    include ::TempMailApi::Domains
  end
end
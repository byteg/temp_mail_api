require File.expand_path('../client/domains', __FILE__)
require File.expand_path('../api', __FILE__)

module TempMailApi
  class Client < Api
    include ::TempMailApi::Domains
  end
end
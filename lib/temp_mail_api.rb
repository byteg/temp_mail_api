require "temp_mail_api/version"

require File.expand_path('../temp_mail_api/configuration', __FILE__)
require File.expand_path('../temp_mail_api/api', __FILE__)
require File.expand_path('../temp_mail_api/client', __FILE__)

module TempMailApi
  extend Configuration

  def self.client(options={})
    TempMailApi::Client.new(options)
  end
end

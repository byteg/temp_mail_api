module TempMailApi
  module Domains
    def get_domains_list
      get "domains/format/#{format}/"
    end
  end
end
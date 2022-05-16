require File.expand_path('../client/user', __FILE__)
require File.expand_path('../client/likes', __FILE__)
require File.expand_path('../client/follows', __FILE__)
require File.expand_path('../client/posts', __FILE__)

module LimbikoApi
  class Client < API
    include ::LimbikoApi::User
    include ::LimbikoApi::Likes
    include ::LimbikoApi::Follows
    include ::LimbikoApi::Posts
  end
end
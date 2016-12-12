require "data_mapper"
require "bcrypt"
require 'dm-postgres-adapter'


class User

  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :password, Text
  property :confirm_password, Text

end

DataMapper.setup(:default, "postgres://localhost/vradbnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!

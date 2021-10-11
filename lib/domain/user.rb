require 'securerandom'

class User
  attr_reader :id, :name, :email
  def initialize(name, email, password)
    @id = SecureRandom.hex(5)
    @name = name
    @email = email
    @password = password
  end
end

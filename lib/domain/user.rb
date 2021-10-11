require 'securerandom'

class User
  attr_reader :id, :name, :email, :phone_number
  def initialize(name, email, phone_number = '07123456789', password)
    @id = SecureRandom.hex(5)
    @name = name
    @email = email
    @phone_number = phone_number
    @password = password
  end
end
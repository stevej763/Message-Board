module IdGenerator

  def self.generate_id
    rand(10000000...99999999)
  end
end
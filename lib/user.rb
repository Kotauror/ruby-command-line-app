class User

  attr_reader :basket, :name

  def initialize(name)
    @name = name
    @basket = []
  end

end

class Owner
  attr_accessor :name
  attr_reader :species
  
  def intitialize(name)
    @species = "human"
    @name = name
  end
end
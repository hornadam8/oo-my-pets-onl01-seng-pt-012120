class Owner
  attr_reader :name, :species
  
  def intitialize(name)
    @species = "human"
    @name = name
  end
end
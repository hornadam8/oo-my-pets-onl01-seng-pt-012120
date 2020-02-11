class Owner
  attr_reader :name, :species
  
  def initialize(name)
    @species = "human"
    @name = name
  end
  
  def say_species
    print "I am a #{@species}."
  end
end
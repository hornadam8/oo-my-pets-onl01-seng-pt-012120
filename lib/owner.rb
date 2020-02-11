class Owner
  
  @@all = []
  
  attr_reader :name, :species
  
  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Dir.new(Cat.name).collect{|cat| if cat.owner = self}
end
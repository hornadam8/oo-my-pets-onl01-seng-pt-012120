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
    cats = []
    Cat.all.each do |cat|
      if cat.owner == self
        cats << cat
      end
    end
    cats
  end
  
  def dogs
    dogs =[]
    Dog.all.each do |dog|
      if dog.owner == self
        dogs << dog
      end
    end
    dogs
  end
  
  def buy_cat(name)
    Cat.new(name,self)
  end
  
  def buy_dog(name)
    Dog.new(name,self)
  end
  
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    
    def list_pets
      "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end
end
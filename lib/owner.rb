class Owner
  # code goes here
  @@all = []
  attr_accessor :name,:pets,:buy_fish
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes:[],cats:[],dogs:[]}
    @@all << self
  end

  def say_species
     "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
  	pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
  	pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each {|dog|dog.mood = "happy"}
  end

 def play_with_cats
  pets[:cats].each {|cat|cat.mood = "happy"}
 end

  def feed_fish
    pets[:fishes].each {|fish|fish.mood = "happy"}
  end

  def sell_pets
      pets.each do |type, pets_arr|
      pets_arr.each { |pet| pet.mood = "nervous" }
      pets_arr.clear
  end
end 

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end
end

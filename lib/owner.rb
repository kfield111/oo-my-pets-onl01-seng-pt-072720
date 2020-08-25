class Owner
  attr_reader :name, :species

@@all = []

  def initialize(name, species= "human")
    @name = name
    @species = species
    save
  end

  def save
    @@all << self
  end


  def say_species
    "I am a #{species}."
  end


def self.all
  @@all
end

def self.count
  @@all.length
end

def self.reset_all
  @@all.clear
end

def cats
  Cats.all.select {|temp| temp.owner = owner}
end

def dogs
  Dogs.all.select {|temp| temp.owner = owner}
end


end

require 'pry'

class Animal
    attr_accessor :type, :name, :owner, :shelter
    @@all = []

    def initialize(type, name, shelter=nil, owner=nil)
        @type = type
        @name = name
        @owner = owner
        @shelter = shelter
        @@all << self
    end

    ## a class method to find all animals who dont have a home yet :(

    def self.all 
        @@all
    end

    def self.find_all_in_shelter #Show me all the animals living in all shelters
        Animal.all.map { |animals| animals.shelter }
    end
    ## Can't seem to get the return to include also the animal instance, only getting the shelter back sans animal info

    def self.find_all_adopted
        Animal.all.map {|animals| animals.owner}
    end

    def self.find_by_shelter(shelter_instance) 
        shelter_instance.animals
    end

end
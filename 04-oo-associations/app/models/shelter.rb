require 'pry'
class Shelter

    attr_accessor :name

    @@all = [] #all animal shelters that exist go in this class variable 

    def initialize(name)
        @name = name #instance variable is set to the passed in argument
        @@all << self
    end

    def rescue_new(type, name, shelter=self)
        # Allow a shelter to rescue an animal out of thin air
        Animal.new(type, name, shelter=self)
    end

    def rescue(animal_instance) # rescue an animal that exists already
        animal_instance.shelter = self
    end

    def self.all #How many shelters are there? Can only be called on Shelter not an intstance of a/individual shelter
        @@all
    end

    def animals #how many animals have been rescued by an individual shelter? (Instance of shelter)
        Animal.all.select { |animals| animals.shelter == self }
    end
### I struggle with this ^

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
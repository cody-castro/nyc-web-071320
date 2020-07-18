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


end
require 'pry'
require_relative './app/models/user'
require_relative './app/models/animal'
require_relative './app/models/shelter'

# Users are born with: (name, age, nickname=nil)
vlad = User.new("Vlad", 21)
jeff = User.new("Jeff", 21)
jenn = User.new("Jennifer", 21, "Jenn")
john = User.new("John", 27, "Johnny")

brooklyn_shelter = Shelter.new("Brooklyn Shelter")
queens_rescue = Shelter.new("Queens Rescue")
bronx_haven = Shelter.new("The Bronx Haven")

# Animals are born with: (type, name, shelter=nil, owner=nil)
bob = Animal.new("snake", "Bob", nil, jenn)
coco = Animal.new("dog", "Coco", nil, jeff)
momo = Animal.new("flying lemur", "Momo", nil, jenn)
sophie = Animal.new("husky", "Sophie", nil, jeff)
franklin = Animal.new("turtle", "Franklin", queens_rescue)
max = Animal.new("fish", "Max", bronx_haven)
tommy = Animal.new("snake", "Tommy", brooklyn_shelter)
blue = Animal.new("dog", "Blue", queens_rescue)
sniffles = Animal.new("flying lemur", "Sniffles", bronx_haven)
cyber = Animal.new("husky", "Cyber", brooklyn_shelter)
bowser = Animal.new("turtle", "Bowser")
bubbles = Animal.new("fish", "Bubbles")
phil = Animal.new("dog", "Phil")
lil = Animal.new("dog", "Lil")
burger = Animal.new("hamster", "Burger")


binding.pry

"yerrr"
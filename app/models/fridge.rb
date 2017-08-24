class Fridge < ApplicationRecord
    has_many :fridge_food
    has_many :food, through: :fridge_food
    has_many :fridge_drink
    has_many :drink, through: :fridge_drink
end

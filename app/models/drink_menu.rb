class DrinkMenu < ActiveRecord::Base
  validates_presence_of :size, :types, :description 
  belongs_to :sushi_menu
end

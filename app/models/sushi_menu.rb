class SushiMenu < ActiveRecord::Base
    validates_presence_of :food_type, :has_order, :menus
    has_many :drink_menus
end

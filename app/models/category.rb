class Category < ApplicationRecord
  has_many :champion_properties
  has_many :champions, through: :champion_properties
end

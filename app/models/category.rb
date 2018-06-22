class Category < ApplicationRecord
  has_many :champion_properties
  has_many :champions, through: :champion_properties
  
  def random_category_pic
    rand_num = Random.new.rand(1..150)
    return
      "https://www.lol-smurfs.com/wordpress/lol-smurfs/wp-content/uploads/2017/01/#{rand_num}.jpg"
  end
end

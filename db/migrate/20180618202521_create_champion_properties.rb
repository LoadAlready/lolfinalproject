class CreateChampionProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :champion_properties do |t|
      t.integer :champion_id
      t.integer :property_id
      t.integer :category_id

      t.timestamps
    end
  end
end

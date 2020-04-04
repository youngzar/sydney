class CreateSushiMenus < ActiveRecord::Migration
  def change
    create_table :sushi_menus do |t|
      t.string :food_type
      t.boolean :has_order
      t.integer :menus

      t.timestamps null: false
    end
  end
end

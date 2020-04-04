class CreateDrinkMenus < ActiveRecord::Migration
  def change
    create_table :drink_menus do |t|
      t.integer :size
      t.string :types
      t.text :description
      t.references :sushi_menu, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

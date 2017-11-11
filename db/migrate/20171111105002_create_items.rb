class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.float :discount_rate
      t.string :category
      t.string :business
      t.string :location
      t.string :time

      t.timestamps null: false
    end
  end
end

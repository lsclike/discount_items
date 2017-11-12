class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.float :Discount_rate
      t.string :category
      t.string :Business
      t.string :location
      t.string :time

      t.timestamps null: false
    end
  end
end

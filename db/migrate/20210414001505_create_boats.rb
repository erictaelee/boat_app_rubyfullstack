class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :title
      t.integer :capacity
      t.string :color
      t.integer :year_christened
      t.integer :price

      t.timestamps
    end
  end
end

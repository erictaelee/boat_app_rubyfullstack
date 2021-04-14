class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :passenger_class
      t.integer :age
      t.references :boat, null: false, foreign_key: true

      t.timestamps
    end
  end
end

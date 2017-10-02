class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.integer :beer_id
      t.integer :cooler_id
      t.string :comment
      t.integer :rating
      t.date :date
      t.string :location
    end
  end
end

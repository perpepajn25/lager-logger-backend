class CreateCoolers < ActiveRecord::Migration[5.1]
  def change
    create_table :coolers do |t|
      t.integer :user_id
    end
  end
end

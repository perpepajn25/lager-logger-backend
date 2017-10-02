class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.string :brewerydb_id
      t.float :abv
      t.string :brewery
      t.string :style
      t.string :season
    end
  end
end

class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.string :brewerydb_id
      t.string :abv
      t.string :style
      t.string :season
    end
  end
end

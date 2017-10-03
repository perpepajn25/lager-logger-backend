class AddImageToBeers < ActiveRecord::Migration[5.1]
  def change
    add_column :beers, :image, :string
  end
end

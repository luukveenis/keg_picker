class AddBreweryToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :brewery, :string
  end
end

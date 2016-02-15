class AddUpcToBeverage < ActiveRecord::Migration
  def change
    add_column :beverages, :upc, :string
  end
end

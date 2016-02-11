class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.references :user, index: true, foreign_key: true
      t.references :beverage, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreatePriceRanges < ActiveRecord::Migration
  def change
    create_table :price_ranges do |t|
      t.integer :dollar_signs

      t.timestamps
    end
  end
end

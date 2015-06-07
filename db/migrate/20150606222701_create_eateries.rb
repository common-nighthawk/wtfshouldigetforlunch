class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.integer :company_id
      t.string :name
      t.string :yelp_url
      t.decimal :lat, :precision => 10, :scale => 6
      t.decimal :lng, :precision => 10, :scale => 6
      t.integer :price_range_id

      t.timestamps
    end
  end
end

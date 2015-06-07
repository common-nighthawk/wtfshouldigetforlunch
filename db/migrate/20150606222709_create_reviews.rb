class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :eatery_id
      t.integer :user_id
      t.text :text
      t.integer :stars

      t.timestamps
    end
  end
end

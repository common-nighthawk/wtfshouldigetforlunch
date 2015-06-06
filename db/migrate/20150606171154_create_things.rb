class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.integer :first_attr
      t.string :second_attr
    end
  end
end

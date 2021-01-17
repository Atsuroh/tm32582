class CreateTmarts < ActiveRecord::Migration[6.0]
  def change
    create_table :tmarts do |t|
      t.string :product_name, null:false
      t.integer :disposal_id, null:false
      t.integer :category_id, null:false
      t.date :deadline, null:false
      t.integer :hour_id, null:false
      t.integer :minute_id, null:false
      t.integer :count, null:false
      t.integer :store_id, null:false
      t.integer :before_price, null:false
      t.integer :after_price, null:false
      t.text :text
      t.references :user, foreign_key:true
      t.timestamps
    end
  end
end
class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_name, null:false
      t.text :text, null:false
      t.integer :category_id, null:false
      t.integer :status_id, null:false
      t.integer :store_id, null:false
      t.integer :old_price, null:false
      t.integer :new_price, null:false
      t.references :user, foreign_key:true
      t.timestamps
    end
  end
end

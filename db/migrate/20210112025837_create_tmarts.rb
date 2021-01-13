class CreateTmarts < ActiveRecord::Migration[6.0]
  def change
    create_table :tmarts do |t|
      t.string :product_name, null:false
      t.text :text, null:false
      t.integer :category_id, null:false
      t.integer :status_id, null:false
      t.integer :store_id, null:false
      t.integer :before, null:false
      t.integer :after, null:false
      t.references :user, foreign_key:true
      t.timestamps
    end
  end
end

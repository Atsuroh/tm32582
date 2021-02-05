class CreateAcceptances < ActiveRecord::Migration[6.0]
  def change
    create_table :acceptances do |t|
      t.integer :accept_id, null: false
      t.references :order
      t.timestamps
    end
  end
end
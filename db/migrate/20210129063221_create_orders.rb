class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user
      t.references :tmart
      t.timestamps
    end
  end
end
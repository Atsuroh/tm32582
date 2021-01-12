class CreateTmarts < ActiveRecord::Migration[6.0]
  def change
    create_table :tmarts do |t|

      t.timestamps
    end
  end
end

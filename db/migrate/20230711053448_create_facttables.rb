class CreateFacttables < ActiveRecord::Migration[7.0]
  def change
    create_table :facttables do |t|
      t.integer :datekey_id
      t.integer :bookkey_id
      t.integer :memberkey_id

      t.timestamps
    end
  end
end

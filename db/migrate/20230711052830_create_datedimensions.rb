class CreateDatedimensions < ActiveRecord::Migration[7.0]
  def change
    create_table :datedimensions do |t|
      t.string :date
      t.integer :year
      t.integer :month
      t.integer :day

      t.timestamps
    end
  end
end

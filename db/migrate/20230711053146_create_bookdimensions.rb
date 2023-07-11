class CreateBookdimensions < ActiveRecord::Migration[7.0]
  def change
    create_table :bookdimensions do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.integer :publicationyear

      t.timestamps
    end
  end
end

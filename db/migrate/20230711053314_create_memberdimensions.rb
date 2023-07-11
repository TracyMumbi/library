class CreateMemberdimensions < ActiveRecord::Migration[7.0]
  def change
    create_table :memberdimensions do |t|
      t.string :name
      t.string :address
      t.string :contactnumber
      t.string :email

      t.timestamps
    end
  end
end

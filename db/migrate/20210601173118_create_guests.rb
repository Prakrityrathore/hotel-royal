class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :id_proof
      t.string :email
      t.integer :phone_number
      t.text :address
      t.integer :number_of_persons

      t.timestamps
    end
  end
end

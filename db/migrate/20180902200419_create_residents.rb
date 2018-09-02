class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.string :name
      t.integer :age
      t.string :allergies
      t.string :medications
      t.string :next_of_kin
      t.string :nok_phone_number
      t.boolean :shared_room
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end

class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :capacity

      t.timestamps
    end
    add_index :rooms, :number, unique: true
  end
end

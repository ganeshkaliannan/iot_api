class CreateRoomDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :room_details do |t|
      t.datetime :in_time
      t.datetime :out_time
      t.references :room, index: true
      t.timestamps
    end
  end
end

class RoomsCreation < ActiveRecord::Migration[5.0]
  def change
    Room.create([
        {id: 1, name: 'Apple', status: false},
        {id: 2, name: 'Google', status: false},
        {id: 3, name: 'IOT', status: false}
      ])
  end
end

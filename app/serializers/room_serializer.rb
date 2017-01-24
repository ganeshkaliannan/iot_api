class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_occupied

  def is_occupied
    object.status
  end

end

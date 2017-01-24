class Api::V1::RoomsController < ApplicationController

  # GET /v1/rooms
	def index
    render json:  Room.all.order(:id), each_serializer: RoomSerializer, status: :ok
	end

  # put /v1/rooms/update_status?id=<room_id>&status=<motion sensor status>
  def update_status
    @room = Room.find(params[:id])
    if params[:status].to_i == 1
      @room.update!(status: 1)
      @room.room_details.create!({in_time: Time.now})
    elsif @room.room_details.present?
      @room.update!(status: 0)
      @room.room_details.last.update!({out_time: Time.now})
    end
    render json:  Room.all.order(:id), each_serializer: RoomSerializer, status: :ok
  end

end

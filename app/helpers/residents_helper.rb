module ResidentsHelper

  def shared_room?(resident)
    if resident.shared_room
      'Yes'
    else
      'No'
    end
  end

  def assigned_room?(resident)
    if resident.room
      "#{resident.room.number}"
    else
      'Not assigned'
    end
  end

  def select_options(rooms)
    if rooms
      rooms.map { |f| f.number }
    else
      'No rooms available'
    end
  end
end

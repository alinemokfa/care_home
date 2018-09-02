json.extract! room, :id, :number, :capacity, :created_at, :updated_at
json.url room_url(room, format: :json)

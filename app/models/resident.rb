class Resident < ApplicationRecord
  # In Rails 5, belongs_to is required by default. By adding optional: true, a resident can be added even if a room has not been assigned to them.
  belongs_to :room, optional: true
end

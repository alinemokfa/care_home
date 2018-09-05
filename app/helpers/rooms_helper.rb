module RoomsHelper
  # TODO At the moment, assigning a room to a resident does not take into consideration room.capacity. Validation needed.
  #      Create function that does the incrementing and updates the db (not sure how to do so w/ Rails - research needed!)
  #      The room should have a residents variable in it as it needs to know both its capacity and how many residents are in it.
  #
  # def add_resident(room)
  #     if room.has_capacity()
  #         room.residents += 1
  #       UPDATE DB?
  #     else
  #         "Sorry, this rooms is full"
  #    end
  # end
  #
  # def has_capacity(room)
  #     room.residents < room.capacity
  # end
end

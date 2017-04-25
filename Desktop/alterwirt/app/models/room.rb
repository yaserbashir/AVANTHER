class Room < ApplicationRecord
	has_many :room_feature
	has_many :bookings
end

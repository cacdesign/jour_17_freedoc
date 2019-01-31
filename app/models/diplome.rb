class Diplome < ApplicationRecord
	has_many :doctors
	has_many :specialties
end

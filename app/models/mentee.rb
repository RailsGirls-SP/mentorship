class Mentee < ApplicationRecord
    has_many :mentorships
    has_many :mentors, through: :mentorships
end
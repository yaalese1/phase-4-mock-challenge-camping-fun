class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :time, inclusion:{in: 0..23}, numericality: true 
  # validates :time, numericality:{in: 0..23}
  # validate :time_range
end

# private

# def time_range
  
#  if S.time < 0 or Signup.time > 23

#   errors.add(:time,"time must be between 0 and 23")
#  end
# end 
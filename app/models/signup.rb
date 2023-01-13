class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity
<<<<<<< HEAD

  validates :time, length: {in: 0..23}
=======
  validates :time, inclusion:{in: 0..23}, numericality: true 
  # validates :time, numericality:{in: 0..23}
  # validate :time_range
>>>>>>> 4d595bc37853b7a23e0a686f1240cd808d0f3ae1
end

# private

# def time_range
  
#  if S.time < 0 or Signup.time > 23

#   errors.add(:time,"time must be between 0 and 23")
#  end
# end 
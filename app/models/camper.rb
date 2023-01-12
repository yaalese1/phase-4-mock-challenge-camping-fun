class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true
    validates :age, inclusion:{in: 8..18} ,numericality: true 
    # validates :age, numericality:{greater_than_or_equal_to: 8, less_than_or_equal_to: 18}
    # validates :age, comparison:{greater_than_or_equal_to: 8 , less_than_or_equal_to: 18}
    # validates :age, length: {minimum: 8, maximum:18} 
    # validates :age, length: {in: 8...18}

end

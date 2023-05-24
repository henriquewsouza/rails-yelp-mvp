class Review < ApplicationRecord
    # Defining relationships
    belongs_to :restaurant

    validates :rating, presence: true
    validates :content, presence: true
    validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5 }

end

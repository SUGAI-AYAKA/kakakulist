class Kakaku < ApplicationRecord
  validates :hinnmei, presence: true, length: { maximum: 255 }
  
end

class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocoded_by
  
  validates :name, length: { minimum: 3 }
  validates :address, presence: { minimum: 10 }
  validates :description, length: { in: 5..2000 }
end

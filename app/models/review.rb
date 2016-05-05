class Review < ActiveRecord::Base
  validates :type, :rating, :body, :appointment, :user, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  # validates :body, length: { minimum: 20 } #commented out for testing
  belongs_to :appointment
  belongs_to :user

end

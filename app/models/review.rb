class Review < ActiveRecord::Base
  validates :type, :appointment, :rating, :body, :user, presence: true

  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  # validates :body, length: { minimum: 20 } #commented out for testing
  belongs_to :appointment
  belongs_to :user

  def author
    self.user
  end

  def author_fullname
    "#{self.author.first_name} #{self.author.last_name}"
  end
end

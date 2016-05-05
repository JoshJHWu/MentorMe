class User < ActiveRecord::Base
  validates :type, :phase, :email, :password, :phone, :first_name, :last_name, presence: true, on: :create
  validates :type, :phase, :email, :phone, :first_name, :last_name, presence: true, on: :update
  validates :email, :phone, uniqueness: true
  validates :password, length: {minimum: 6}
  validates :phase, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 3}
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create

  has_secure_password
  has_many :reviews
end

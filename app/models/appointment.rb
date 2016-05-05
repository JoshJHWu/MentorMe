class Appointment < ActiveRecord::Base
  validates :start_time, :mentor_id, presence: true

  belongs_to :user


end

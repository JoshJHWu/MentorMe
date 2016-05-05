class Student < User

  has_many :appointments, foreign_key: :student_id

  has_many :reviews
  has_many :reviews_of_mentor

end

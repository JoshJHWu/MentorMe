class Mentor < User

  has_many :appointments, foreign_key: :mentor_id

  has_many :reviews
  has_many :reviews_of_student

end

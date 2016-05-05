class Mentor < User
  has_many :reviews
  has_many :of_student
end

class Student < User
  has_many :reviews
  has_many :reviews_of_mentor
end

class Instructor < ActiveRecord::Base
  belongs_to :instrument
  has_many :students
end

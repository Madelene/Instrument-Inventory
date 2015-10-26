class Instrument < ActiveRecord::Base
  has_many :instructors, :through => :students
end

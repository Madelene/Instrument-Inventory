class Instructor < ActiveRecord::Base
  has_many :proficiencies
  has_many :instruments, :through => :proficiencies
end

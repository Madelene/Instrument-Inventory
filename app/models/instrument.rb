class Instrument < ActiveRecord::Base
  has_many :proficiencies
  has_many :instructors, :through => :proficiencies
end

class Proficiency < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :instrument
end

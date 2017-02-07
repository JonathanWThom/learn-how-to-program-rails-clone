class Course < ActiveRecord::Base
  has_many :weeks
  validates_presence_of :name
end

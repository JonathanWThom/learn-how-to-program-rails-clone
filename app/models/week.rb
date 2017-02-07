class Week < ActiveRecord::Base
  has_many :lessons
  belongs_to :course
  validates :name, :presence => true
end

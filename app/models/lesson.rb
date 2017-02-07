class Lesson < ActiveRecord::Base
  validates :name, :number, :content, :presence => true
end

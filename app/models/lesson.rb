class Lesson < ActiveRecord::Base
  validates :name, :number, :content, :presence => true

  def self.lessonPrev(lessonNumber)
    prevLesson = lessonNumber - 1
    Lesson.where(number: prevLesson)
  end
end

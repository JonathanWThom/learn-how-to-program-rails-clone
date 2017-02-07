class Lesson < ActiveRecord::Base
  validates :name, :number, :content, :presence => true

  def self.lessonPrev(lessonNumber)
    prevLesson = lessonNumber - 1
    foundLesson = Lesson.where(number: prevLesson)
    return foundLesson[0]
  end

  def self.lessonNext(lessonNumber)
    nextLesson = lessonNumber + 1
    foundLesson = Lesson.where(number: nextLesson)
    return foundLesson[0]
  end


end

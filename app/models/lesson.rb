class Lesson < ActiveRecord::Base
  validates :name, :number, :content, :presence => true
  belongs_to :week

  def self.lessonPrev(lesson)
    lessonIwant = Lesson.where(number: (lesson.number - 1), week_id: lesson.week_id)
    return lessonIwant[0]
  end

  def self.lessonNext(lesson)
    lessonIwant = Lesson.where(number: (lesson.number + 1), week_id: lesson.week_id)
    return lessonIwant[0]
  end


end

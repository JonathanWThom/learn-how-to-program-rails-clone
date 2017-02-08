require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :number}
  it { should validate_presence_of :name}
  it { should validate_presence_of :content}
  it { should belong_to :week }

  describe('.lessonPrev') do
    it ('returns the previous lesson') do
      course1 = Course.create(name: "Super noob")
      week1 = course1.weeks.create(name: "week 1 damnit")
      lesson1 = week1.lessons.create(name: "Lesson1", content: "Lorem Ipsum", number: 1, day_of_week: 'Monday')
      lesson2 = week1.lessons.create(name: "Lesson2", content: "Lorem Ipsum", number: 2, day_of_week: 'Monday')
      expect(Lesson.lessonPrev(lesson2)).to eq(lesson1)
    end
  end

  describe('.lessonNext') do
    it ('returns the previous lesson') do
      course1 = Course.create(name: "Super noob")
      week1 = course1.weeks.create(name: "week 1 damnit")
      lesson1 = week1.lessons.create(name: "Lesson1", content: "Lorem Ipsum", number: 1, day_of_week: 'Monday')
      lesson2 = week1.lessons.create(name: "Lesson2", content: "Lorem Ipsum", number: 2, day_of_week: 'Monday')
      expect(Lesson.lessonNext(lesson1)).to eq(lesson2)
    end
  end
end

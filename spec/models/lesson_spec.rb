require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :number}
  it { should validate_presence_of :name}
  it { should validate_presence_of :content}
  it { should belong_to :week }

  describe('.lessonPrev') do
    it ('returns the previous lesson') do
      lesson1 = Lesson.new(name: "Lesson1", content: "Lorem Ipsum", number: 1)
      lesson1.save
      lesson2 = Lesson.new(name: "Lesson2", content: "Lorem Ipsum", number: 2)
      lesson2.save
      expect(Lesson.lessonPrev(lesson2.number)).to eq(lesson1)
    end
  end

  describe('.lessonNext') do
    it ('returns the previous lesson') do
      lesson1 = Lesson.new(name: "Lesson1", content: "Lorem Ipsum", number: 1)
      lesson1.save
      lesson2 = Lesson.new(name: "Lesson2", content: "Lorem Ipsum", number: 2)
      lesson2.save
      expect(Lesson.lessonNext(lesson1.number)).to eq(lesson2)
    end
  end
end

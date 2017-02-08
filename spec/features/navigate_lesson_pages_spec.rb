require 'rails_helper'

describe "navigate lessons path" do
  it "navigates to the next lesson" do
    course = Course.create(name: 'Rails')
    week = course.weeks.create(name: 'Rails Basics')
    lesson = week.lessons.create(name: 'Build a rails app', content: 'Lorem Ipsum Butts Butts Butts', number: 1)
    lesson2 = week.lessons.create(name: 'Build a butts app', content: 'Lorem Ipsum Butts Butts Butts', number: 2)
    visit week_lesson_path(week, lesson)
    click_link "Next"
    expect(page).to have_content("Build a butts app")
  end


  it "navigates to the previous lesson" do
    course = Course.create(name: 'Rails')
    week = course.weeks.create(name: 'Rails Basics')
    lesson = week.lessons.create(name: 'Build a rails app', content: 'Lorem Ipsum Butts Butts Butts', number: 1)
    lesson2 = week.lessons.create(name: 'Build a butts app', content: 'Lorem Ipsum Butts Butts Butts', number: 2)
    visit week_lesson_path(week, lesson2)
    click_link "Previous"
    expect(page).to have_content("Build a rails app")
  end
end

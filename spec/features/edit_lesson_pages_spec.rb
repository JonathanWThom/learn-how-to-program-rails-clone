require 'rails_helper'

describe 'the edit lesson path' do
  it 'will edit a lesson' do
    course = Course.create(name: 'Rails')
    week = course.weeks.create(name: 'Rails Basics')
    lesson = week.lessons.create(name: 'Build a rails app', content: 'Lorem Ipsum Butts Butts Butts', number: 1)
    visit week_lesson_path(week, lesson)
    click_link 'Edit Lesson'
    fill_in 'Name', :with => 'Break a rails app'
    click_on 'Update Lesson'
    expect(page).to have_content('Break a rails app')
  end

  it 'will edit a lesson' do
    course = Course.create(name: 'Rails')
    week = course.weeks.create(name: 'Rails Basics')
    lesson = week.lessons.create(name: 'Build a rails app', content: 'Lorem Ipsum Butts Butts Butts', number: 1)
    visit week_lesson_path(week, lesson)
    click_link 'Edit Lesson'
    fill_in 'Name', :with => ''
    click_on 'Update Lesson'
    expect(page).to have_content('Please fix these errors:')
  end

  it 'will delete a lesson' do
    course = Course.create(name: 'Rails')
    week = course.weeks.create(name: 'Rails Basics')
    lesson = week.lessons.create(name: 'Build a rails app', content: 'Lorem Ipsum Butts Butts Butts', number: 1)
    visit week_lesson_path(week, lesson)
    click_link 'Delete Lesson'
    expect(page).to_not have_content('Build a rails app')
  end
end

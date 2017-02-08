require 'rails_helper'

describe 'the add a lesson path' do
  it 'will add a lesson' do
    course = Course.create(name: 'Rails')
    week = course.weeks.create(name: 'Rails Basics')
    visit course_week_path(course, week)
    click_link 'Add a Lesson'
    fill_in 'Name', :with => 'Make a rails app'
    fill_in 'Content', :with => 'Lorum Butts Ipsum Such'
    fill_in 'Number', :with => 1
    click_on 'Create Lesson'
    expect(page).to have_content('Make a rails app')
  end
end

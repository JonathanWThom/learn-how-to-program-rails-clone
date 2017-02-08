require 'rails_helper'

describe 'the edit week path' do
  it 'will edit a week' do
    course = Course.create(name: 'Rails')
    week = course.weeks.create(name: 'Rails Basics')
    visit course_path(course)
    click_link 'Rails Basics'
    click_link 'Edit Week'
    fill_in 'Name', :with => 'JabbaScript'
    click_on 'Update Week'
    expect(page).to have_content('JabbaScript')
  end

  it 'will delete a week' do
    course = Course.create(name: 'Rails')
    week = course.weeks.create(name: 'Rails Basics')
    visit course_week_path(course, week)
    click_link 'Delete Week'
    expect(page).to_not have_content('Rails Basics')
  end
end

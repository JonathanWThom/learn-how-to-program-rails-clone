require 'rails_helper'

describe ('the edit course process') do
  it 'will edit a course' do
    course = Course.create(name: 'Rails')
    visit course_path(course)
    click_link 'Edit'
    fill_in 'Name', :with => 'Ruby'
    click_on 'Update Course'
    expect(page).to have_content('Ruby')
  end

  it 'will delete a course' do
    course = Course.create(name: 'Rails')
    visit course_path(course)
    click_link 'Delete'
    expect(page).to_not have_content('Rails')
  end
end

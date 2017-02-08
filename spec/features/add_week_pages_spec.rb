require 'rails_helper'

describe 'the add week path' do
  it 'will add a week' do
    course = Course.create(name: 'Rails')
    visit course_path(course)
    click_link 'New Week'
    fill_in 'Name', :with => 'Rails Basics'
    click_on 'Create Week'
    expect(page).to have_content('Rails Basics')
  end

  it 'will add a week unsuccessfully' do
    course = Course.create(name: 'Rails')
    visit course_path(course)
    click_link 'New Week'
    fill_in 'Name', :with => ''
    click_on 'Create Week'
    expect(page).to have_content('Add New Week to Rails')
  end
end

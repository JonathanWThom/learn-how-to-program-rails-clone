require 'rails_helper'

describe 'the add course process' do
  it 'adds a course' do
    visit courses_path
    click_link 'Add A Course'
    fill_in 'Name', :with => 'Rails'
    click_on 'Create Course'
    expect(page).to have_content('Rails')
  end
end

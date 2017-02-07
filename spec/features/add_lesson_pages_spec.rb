require 'rails_helper'

describe 'the add a lesson process' do
  it 'adds a new lesson' do
    visit lessons_path
    click_link 'Add A Lesson'
    fill_in 'Name', :with => 'Lesson1'
    fill_in 'Content', :with => 'Lorem Ipsum'
    fill_in 'Number', :with => 3
    click_on 'Create Lesson'
    expect(page).to have_content('Lesson1')
  end
end

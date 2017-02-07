require 'rails_helper'

describe 'the edit a lesson path' do
  it 'will edit a lesson' do
    lesson = Lesson.create(name: 'Lesson1', content: 'Lorem Ipsum', number: 2)
    visit lessons_path
    click_link 'Lesson1'
    click_link 'Edit Lesson'
    fill_in 'Name', :with => 'LessonOne'
    click_on 'Update Lesson'
    expect(page).to have_content('LessonOne')
  end

  it 'will delete a lesson' do
    lesson = Lesson.create(name: 'Lesson1', content: 'Lorem Ipsum', number: 2)
    visit lesson_path(lesson)
    click_link 'Delete Lesson'
    expect(page).to_not have_content('Lesson1')
  end
end

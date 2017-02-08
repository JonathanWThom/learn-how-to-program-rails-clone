require 'rails_helper'

# describe 'the go forward and back between lessons path' do
#   it 'will navigate to the previous lesson' do
#     lesson1 = Lesson.create(name: 'Lesson1', content: 'Lorem Ipsum', number: 1)
#     lesson2 = Lesson.create(name: 'Lesson2', content: 'Lorem Ipsum', number: 2)
#     visit lesson_path(lesson2)
#     click_link 'Previous'
#     expect(page).to have_content('Lesson1')
#   end
#
#   it 'will navigate to the next lesson' do
#     lesson1 = Lesson.create(name: 'Lesson1', content: 'Lorem Ipsum', number: 1)
#     lesson2 = Lesson.create(name: 'Lesson2', content: 'Lorem Ipsum', number: 2)
#     visit lesson_path(lesson1)
#     click_link 'Next'
#     expect(page).to have_content('Lesson2')
#   end
#
#   it 'will return to lessons page' do
#     lesson1 = Lesson.create(name: 'Lesson1', content: 'Lorem Ipsum', number: 1)
#     visit lesson_path(lesson1)
#     click_link 'Return to Lessons'
#     expect(page).to have_content('Lessons')
#   end
# end

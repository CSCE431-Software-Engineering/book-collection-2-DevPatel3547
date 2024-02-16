# spec/features/add_book_spec.rb

require 'rails_helper'

RSpec.feature 'Book management', type: :feature do
  scenario 'User adds a new book' do
    visit new_book_path
    fill_in 'Title', with: 'New Book Title'
    click_button 'Create Book'
    expect(page).to have_text('Book was successfully created.')
  end

  scenario 'User fails to add a new book without a title' do
    visit new_book_path
    fill_in 'Title', with: ''
    click_button 'Create Book'
    expect(page).to have_text("Title can't be blank")
  end
end

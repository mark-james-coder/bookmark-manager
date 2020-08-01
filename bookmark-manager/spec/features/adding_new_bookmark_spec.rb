require 'pg'

feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/create')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Add')

    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
  scenario 'The bookmark must be a valid URL' do
    visit('/bookmarks/create')
    fill_in('url', with: 'not a real bookmark')
    click_button('Add')

    expect(page).not_to have_content "not a real bookmark"
    expect(page).to have_content "You must submit a valid URL."
  end
end

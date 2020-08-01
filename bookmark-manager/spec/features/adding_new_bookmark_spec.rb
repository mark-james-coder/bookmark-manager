require 'pg'

feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/create')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Add')

    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end


# feature 'adding a new bookmark' do
#   scenario 'add a new bookmark' do
#     visit('/add')
#     fill_in('url', with: 'http://www.bbc.com')
#     click_button 'Add'
#     expect(page).to have_content "http://www.bbc.com"
#   end
# end

feature 'Viewing the index page' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'Viewing bookmarks' do
  scenario 'visiting the bookmarks page' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.google.com"
  end
end

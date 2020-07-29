require 'pg'

feature 'adding a new bookmark' do
  scenario 'add a new bookmark' do
    visit('/add')
    fill_in('url', with: 'http://www.bbc.com')
    click_button 'Add'
    expect(page).to have_content "http://www.bbc.com"
  end
end

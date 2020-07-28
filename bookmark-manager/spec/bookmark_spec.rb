require 'bookmark'

describe Bookmark do
  it 'returns a list of bookmarks' do
    bookmark = Bookmark.all
    expect(bookmark).to include 'http://www.google.com'
    expect(bookmark).to include 'http://www.yahoo.com'
  end
end

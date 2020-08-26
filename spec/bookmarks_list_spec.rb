require "bookmarks_list"

describe BookmarksList do 
  describe '#list' do
    it 'includes url links' do    
    connection = PG.connect(dbname: 'bookmarks_manager_test')
    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    bookmarks = BookmarksList.get_bookmarks
    p bookmarks[0]
    
    expect(bookmarks[0]['url']).to include('http://www.makersacademy.com')
    expect(bookmarks[1]['url']).to include('http://www.destroyallsoftware.com')
    expect(bookmarks[2]['url']).to include('http://www.google.com')
    end
  end
end

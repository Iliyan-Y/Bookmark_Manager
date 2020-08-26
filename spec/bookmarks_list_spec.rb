require "bookmarks_list"

describe BookmarksList do 

  describe '#get_bookmarks' do
    it 'Gets all bookmarks from the databese' do    
      BookmarksList.create('http://www.makersacademy.com')
      BookmarksList.create('http://www.destroyallsoftware.com')
      BookmarksList.create('http://www.google.com')

      bookmarks = BookmarksList.get_bookmarks
  
      expect(bookmarks[0]['url']).to include('http://www.makersacademy.com')
      expect(bookmarks[1]['url']).to include('http://www.destroyallsoftware.com')
      expect(bookmarks[2]['url']).to include('http://www.google.com')
    end
  end

  describe "#create" do 
    it "Add a new bookmark to the database" do 
      BookmarksList.create("http://www.github.com")
      bookmarks = BookmarksList.get_bookmarks
      expect(bookmarks.first['url']).to include('http://www.github.com')
    end
  end

end

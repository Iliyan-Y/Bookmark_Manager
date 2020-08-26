require "bookmarks_list"

describe BookmarksList do 

  describe '#get_bookmarks' do
    it 'Gets all bookmarks from the databese' do    
      BookmarksList.create('http://www.makersacademy.com', "makers")
      BookmarksList.create('http://www.destroyallsoftware.com', "destroy")
      BookmarksList.create('http://www.google.com', "google")

      bookmarks = BookmarksList.get_bookmarks
  
      expect(bookmarks[0]['url']).to include('http://www.makersacademy.com')
      expect(bookmarks[1]['url']).to include('http://www.destroyallsoftware.com')
      expect(bookmarks[2]['url']).to include('http://www.google.com')
    end
  end

  describe "#create" do 
    it "Add a new bookmark to the database" do 
      bookmark = BookmarksList.create("http://www.github.com","github")
      expect(bookmark.first['url']).to include('http://www.github.com')
      expect(bookmark.first['title']).to eq "github"
    end
  end

end

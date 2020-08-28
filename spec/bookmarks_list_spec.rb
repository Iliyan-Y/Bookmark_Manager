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

  describe "#delete" do 
    it "delete a bookmark based on url" do 
      bookmark = BookmarksList.create("http://www.github.com","github")
      BookmarksList.delete(bookmark.first["id"])
      expect(BookmarksList.get_bookmarks.first).to be nil
    end
  end

  describe "#update" do 
    it "Updates existing bookmark" do 
      bookmark = BookmarksList.create('http://www.makersacademy.com', "makers")
     
      BookmarksList.update(bookmark[0]["id"], "http://www.google.com", "google")

      expect(BookmarksList.get_bookmarks[0]["title"]).to eq "google"

    end
  end

end

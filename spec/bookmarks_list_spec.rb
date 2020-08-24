require "bookmarks_list"

describe BookmarksList do 



  describe '#list' do
    it 'includes url links' do
    subject.add_to_list
    expect(subject.list).to include 'http://www.makersacademy.com'
    expect(subject.list).to include "http://www.google.com" 
    expect(subject.list).to include "www.destroyallsoftware.com"
    end
  end
end

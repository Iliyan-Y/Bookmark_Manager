require "bookmarks_list"

describe BookmarksList do 

  it "return list with bookmarks" do 
    subject.add_to_list("First bookmark")
    expect(subject.list.length).to be > 0
  end

end

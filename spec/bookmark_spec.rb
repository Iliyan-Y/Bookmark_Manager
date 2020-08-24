require "bookmark"

describe Bookmark do 
  let(:bookmark) {Bookmark.new("Some url")}
  it { expect(bookmark.url).to eq "Some url" }
end
class BookmarksList 

  attr_reader :list

  def initialize
    @list = []
  end

  def add_to_list(bookmark)
    @list << bookmark
  end
end
  
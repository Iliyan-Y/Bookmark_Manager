require 'pg'
class BookmarksList 

  attr_reader :list

  def initialize
    @list = []
  end

  def add_to_list
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.each { |bookmark| @list << bookmark['url']}
  end

    
end
  
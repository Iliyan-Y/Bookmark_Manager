require 'pg'
class BookmarksList 

  def self.get_bookmarks
    env_check
    result = @connection.exec('SELECT * FROM bookmarks')
    result.each { |bookmark| bookmark}
  end

  def self.env_check
    if ENV['ENVIRONMENT'] == 'test'
      @connection = PG.connect(dbname: 'bookmarks_manager_test')
    else
      @connection = PG.connect(dbname: 'bookmark_manager')
    end
  end

    
end
  
require 'pg'
class BookmarksList 

  def self.get_bookmarks
    connect
    result = @connection.exec('SELECT * FROM bookmarks')
    result.each { |bookmark| bookmark}
  end

  def self.create(url, title)
    connect
    @connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}') RETURNING id, url, title;")
  end

  def self.connect
    if ENV['ENVIRONMENT'] == 'test'
      @connection = PG.connect(dbname: 'bookmarks_manager_test')
    else
      @connection = PG.connect(dbname: 'bookmark_manager')
    end
  end

    
end
  
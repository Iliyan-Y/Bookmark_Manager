require_relative 'database'

class BookmarksList 

  def self.get_bookmarks
    result = DataBase.query('SELECT * FROM bookmarks')
    result.each { |bookmark| bookmark}
  end

  def self.create(url, title)
    DataBase.query("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}') RETURNING id, url, title;")
  end

  def self.delete(id)
    DataBase.query("DELETE FROM bookmarks WHERE id = '#{id}';")
  end

  def self.update(id, url, title)
    DataBase.query("UPDATE bookmarks SET title = '#{title}', url = '#{url}' WHERE id = '#{id}';")
  end

end
  
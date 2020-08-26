require 'pg'
class BookmarksList 

  attr_reader :list

  def initialize
    @list = []
  end

  def add_to_list
    env_check
    result = connection.exec('SELECT * FROM bookmarks')
    result.each { |bookmark| @list << bookmark['url']}
  end

  def env_check
    if ENV['ENVIRONMENT'] == 'test'
      @connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      @connection = PG.connect(dbname: 'bookmark_manager')
    end
  end

    
end
  
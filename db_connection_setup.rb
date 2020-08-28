require './lib/database'

if ENV['ENVIRONMENT'] == 'test'
  DataBase.connect('bookmarks_manager_test')
else
  DataBase.connect('bookmark_manager')
end
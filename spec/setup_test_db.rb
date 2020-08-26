require 'pg'
def setup_test_db
  p "Setting up test database..."

  connection = PG.connect(dbname: 'bookmarks_manager_test')

  # Clear the bookmarks table
  connection.exec("TRUNCATE bookmarks;")
end
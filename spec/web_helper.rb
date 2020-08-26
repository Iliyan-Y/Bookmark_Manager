def create_n_visit_bookmarks
  BookmarksList.create('http://www.makersacademy.com', 'makers')
  BookmarksList.create('http://www.destroyallsoftware.com', "destroy")
  BookmarksList.create('http://www.google.com', "google")

  visit('/bookmarks')
end
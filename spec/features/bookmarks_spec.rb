
feature "Viewing bookmarks" do 

  scenario "Show list of bookmarks" do
    BookmarksList.create('http://www.makersacademy.com')
    BookmarksList.create('http://www.destroyallsoftware.com')
    BookmarksList.create('http://www.google.com')

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end

  scenario "User can create new bookmark" do 

    visit('/bookmarks')
    click_link "Add Bookmark"
    fill_in('url', with: "https://www.diagram.codes/")
    click_button "Submit"
    expect(page).to have_content "https://www.diagram.codes/"

  end

end
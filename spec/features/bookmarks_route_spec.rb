feature "Viewing bookmarks" do 
  scenario "Show list of bookmarks" do
    visit("/bookmarks")
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content  "www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com" 
  end
end
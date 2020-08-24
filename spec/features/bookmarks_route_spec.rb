feature "Viewing bookmarks" do 
  scenario "Show list of bookmarks" do
    visit("/bookmarks")
    expect(page).to have_content "https://www.google.co.uk/"
  end
end
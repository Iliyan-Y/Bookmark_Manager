
feature "Viewing bookmarks" do 

  scenario "Show list of bookmarks" do
    create_n_visit_bookmarks
    expect(page).to have_link("makers", href:"http://www.makersacademy.com")
    expect(page).to have_link("destroy", href:"http://www.destroyallsoftware.com")
    expect(page).to have_link("google", href:"http://www.google.com")
  end

  scenario "User can create new bookmark" do 

    visit('/bookmarks')
    click_link "Add Bookmark"
    fill_in("title", with: "diagrams")
    fill_in('url', with: "https://www.diagram.codes/")
    click_button "Submit"
    expect(page).to have_link("diagrams", href:"https://www.diagram.codes/")

  end

  scenario "User can delete bookmark" do 
    create_n_visit_bookmarks
    expect(page).to have_link('makers', href: 'http://www.makersacademy.com')
    
    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'

   
    expect(page).not_to have_link("makers", href:"http://www.makersacademy.com")
    expect(page).to have_link("destroy", href:"http://www.destroyallsoftware.com")
    expect(page).to have_link("google", href:"http://www.google.com")
  end

end
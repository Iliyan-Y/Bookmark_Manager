feature "Update" do
  scenario "user can update the bookmarks" do 
    create_n_visit_bookmarks
    expect(page).to have_link('makers', href: 'http://www.makersacademy.com')

    bookmark_id = BookmarksList.get_bookmarks[0]['id']

    first('.bookmark').click_button 'Edit'
    expect(current_path).to eq "/update/#{bookmark_id}"

    fill_in('url', with: 'blank')
    fill_in('title', with: 'blank')
    click_button 'Submit'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_content'makers'
    expect(page).to have_link('blank', href: 'blank')
    expect(page).to have_link("destroy", href: 'http://www.destroyallsoftware.com' )
  end

end
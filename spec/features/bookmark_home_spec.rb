
feature 'has homepage' do
    scenario 'will have correct heading' do
        visit('/')
        expect(page).to have_content('Bookmark App')
    end
end
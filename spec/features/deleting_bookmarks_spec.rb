
feature 'Deleting a bookmarks' do

  scenario 'deleting a new bookmark' do
    # Uses PG gem to connect to database
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmarks.add(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/bookmarks')
    expect(page).to have_link("Makers Academy", href: "http://www.makersacademy.com")

    first('.bookmark').click_button('Delete')

    expect(current_path).to eq('/bookmarks')
    expect(page).not_to have_link("Makers Academy", href: "http://www.makersacademy.com")
  end
end
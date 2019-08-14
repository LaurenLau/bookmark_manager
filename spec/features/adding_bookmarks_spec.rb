
feature 'viewing bookmarks' do

  scenario 'adding new bookmark' do
    # Uses PG gem to connect to database
    connection = PG.connect(dbname: 'bookmark_manager_test')
    visit('/bookmarks')
    fill_in("url", with: "http://www.makersacademy.com")
    fill_in("title", with: "Makers Academy")
    click_button("add")
    expect(page).to have_link("Makers Academy", href: "http://www.makersacademy.com")
  end
end
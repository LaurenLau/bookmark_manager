feature 'viewing bookmarks homepage' do
  scenario 'viewing bookmarks page' do
    Bookmarks.add(title: 'Google', url: 'http://www.google.com')
    Bookmarks.add(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
    Bookmarks.add(title: 'Makers Academy', url: 'http://www.makersacademy.com')

    
    visit('/bookmarks')
    expect(page). to have_link('Google', href: 'http://www.google.com')
    expect(page). to have_link('Destroy All Software', href: 'http://www.destroyallsoftware.com')
    expect(page). to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end
end
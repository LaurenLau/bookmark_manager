require_relative '../lib/bookmarks.rb'
describe Bookmarks do
  describe 'all' do
    bookmarks = described_class.all 

    it 'shows list of bookmark urls' do
      Bookmarks.add(title: 'Google', url: 'http://www.google.com')
      Bookmarks.add(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
      Bookmarks.add(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      
      expect(bookmarks.Length).to to eq(3)
      expect(bookmarks.first).to be_a(Bookmarks)
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe 'add' do
    it 'creates a new bookmark' do
      Bookmarks.add(title: 'Google',url: 'http://www.google.com')
      
      expect(bookmarks['title']).to eq('Google')
      expect(bookmarks['url']).to eq('http://www.google.com')
    end
  end

end

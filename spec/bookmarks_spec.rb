require_relative '../lib/bookmarks.rb'
require './spec/database_helpers.rb'

describe Bookmarks do
  describe 'all' do


    it 'shows list of bookmark urls' do
      Bookmarks.add(title: 'Google', url: 'http://www.google.com')
      Bookmarks.add(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
      Bookmarks.add(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      
      bookmarks = described_class.all 

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmarks
      expect(bookmarks.first.title).to eq 'Google'
      expect(bookmarks.first.url).to eq 'http://www.google.com'
    end
  end

  describe 'add' do
    it 'creates a new bookmark' do
     bookmarks = Bookmarks.add(title: 'Google', url: 'http://www.google.com')
      persisted_data = persisted_data(id: bookmarks.id)

      expect(bookmarks).to be_a Bookmarks
      expect(bookmarks.title).to eq 'Google'
      expect(bookmarks.url).to eq 'http://www.google.com'
    end
  end

  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmarks = Bookmarks.add(url: "http://www.makersacademy.com", title:'Makers Academy')
      Bookmarks.delete(id: bookmarks.id)
      expect(Bookmarks.all.length).to eq 0
    end
  end

  describe '.find' do
    it 'gets the requested bookmark' do
      bookmarks = Bookmarks.add(title: 'Google', url: 'http://www.google.com')
      result = Bookmarks.find(id: bookmarks.id)

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmarks
      expect(bookmarks.first.title).to eq 'Google'
      expect(bookmarks.first.url).to eq 'http://www.google.com'
    end
  end
end

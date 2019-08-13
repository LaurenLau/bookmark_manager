require_relative '../lib/bookmarks.rb'
describe Bookmarks do
  it 'shows list of bookmarks' do
    expect(described_class.all).to include('http://www.google.com')
    expect(described_class.all).to include('http://www.makersacademy.com')
  end
end

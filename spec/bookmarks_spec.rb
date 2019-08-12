require_relative '../lib/bookmarks.rb'
describe Bookmarks do
  it 'shows list of bookmarks' do
    expect(subject.all).to include('Google')
    expect(subject.all).to include('Facebook')
  end
end

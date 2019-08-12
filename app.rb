require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @show_bookmarks = Bookmarks.new.all
    erb(:bookmarks)
  end

  run! if app_file == $PROGRAM_NAME
end

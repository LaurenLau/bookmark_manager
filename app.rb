require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    'Google Facebook'
  end

  run! if app_file == $PROGRAM_NAME
end

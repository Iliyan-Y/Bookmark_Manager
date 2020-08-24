require 'sinatra/base'

class BookmarkApp < Sinatra::Base

    get '/' do
        'Bookmark App'
    end

    get '/bookmarks' do
        erb :bookmarks
    end

end

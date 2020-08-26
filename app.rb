require 'sinatra/base'
require './lib/bookmarks_list'

class BookmarkApp < Sinatra::Base


    get '/' do
        'Bookmark App'
    end

    get '/bookmarks' do 
        @list = BookmarksList.get_bookmarks
        erb :bookmarks
    end

end

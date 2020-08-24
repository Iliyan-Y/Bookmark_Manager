require 'sinatra/base'
require './lib/bookmarks_list'

class BookmarkApp < Sinatra::Base

    get '/' do
        'Bookmark App'
    end

    get '/bookmarks' do
        bookmark_list = BookmarksList.new
        bookmark_list.add_to_list
        @list = bookmark_list.list
        erb :bookmarks
    end

end

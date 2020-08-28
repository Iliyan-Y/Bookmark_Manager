require 'sinatra/base'
require './lib/bookmarks_list'
require './db_connection_setup'

class BookmarkApp < Sinatra::Base
    enable :method_override

    get '/' do
        'Bookmark App'
    end

    get '/bookmarks' do 
        @list = BookmarksList.get_bookmarks
        erb :bookmarks
    end

    get "/create" do
        erb :create 
    end

    post "/post_bookmark" do 
        BookmarksList.create(params[:url], params[:title])
        redirect "/bookmarks"
    end

    post "/bookmarks/:id" do
        BookmarksList.delete(params[:id])
        redirect "/bookmarks" 
    end

    get "/update/:id" do 
        @id = params[:id]
        erb :update
    end

    patch "/bookmarks/:id" do 
        BookmarksList.update(params[:id],params[:url],params[:title])
        redirect "/bookmarks"
    end
end

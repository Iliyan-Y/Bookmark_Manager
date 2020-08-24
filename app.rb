require 'sinatra/base'

class BookmarkApp < Sinatra::Base

    get '/' do
        'Bookmark App'
    end

end

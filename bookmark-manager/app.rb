require 'sinatra/base'
require './lib/bookmark'


class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    redirect 'bookmarks/index'
  end

  get '/bookmarks/index' do
    @bookmarks = Bookmark.all
    erb :"bookmarks/index"
  end

  get '/bookmarks/create' do
    erb :"bookmarks/create"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks/index'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks/index'
  end

  get '/bookmarks/:id/edit' do
    @bookmark = Bookmark.find(id: params[:id])
    erb :"bookmarks/edit"
  end

  patch '/bookmarks/:id' do
      Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
      redirect '/bookmarks/index'
    end

  run! if app_file == $0
end

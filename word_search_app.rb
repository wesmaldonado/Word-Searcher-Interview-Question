require 'sinatra/base'
require 'word_search'

class WordSearchApp < Sinatra::Base

  ws = WordSearch.new(['a','b'])
  ws.init
  set :ws, ws

  get '/' do
    haml :index
  end

  get '/find/:term' do
    { :matches => ws.search(params[:term]) }.to_json
  end

  get '/about' do
    haml :about
  end


end

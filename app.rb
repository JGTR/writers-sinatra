require 'debugger'
require './lib/writer.rb'
require './lib/influence.rb'

class NovelApp < Sinatra::Base

  get '/'  do
    @writer = Writer.new
    @writer.name = "Will"
    @writer.name
  end

  get '/form' do
    erb :'nested_form'
  end

  post '/submit' do
    @writer = Writer.new
    @writer.name = params[:writer][:name]
    @writer.novel = params[:writer][:novel]
    @writer.theme = params[:writer][:theme]

    params[:writer][:influences].values do |inf|
        influence = Influence.new
        influence.name = inf[:name]
        influence.age = inf[:age]
        @writer.add_influence(influence)
    end

    # {writer => { influences => [influence1, influence2] } }
    # @writer = Writer.new
    # p params[]
    erb :show
  end
end
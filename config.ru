require 'bundler/setup'
require 'sinatra/base'
require './lib/writer.rb'
require './app'
require './lib/influence.rb'

run NovelApp.new

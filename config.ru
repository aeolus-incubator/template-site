require 'bundler/setup'
Bundler.require
require './app.rb'

use Rack::Deflater

map '/' do
  run Application
end

# Should support api
map '/api' do
  run Api
end

map '/authenticate' do
  run Oauth
end

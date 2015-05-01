require "sinatra"
require_relative "services/tweet_stream"

class Firehose < Sinatra::Base
  set :method_override, true
  set :root, 'lib/app'

  configure :development do
    register Sinatra::Reloader
  end

  register Sinatra::Partial
  set :partial_template_engine, :erb

  get "/" do
    track("Obama")
    erb :index
  end
end

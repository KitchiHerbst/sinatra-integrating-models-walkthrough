require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    @analyzed_text = TextAnalyzer.new(text_from_user)
    # @analyzedtext = TextAnalyzer.new(params[:usertext]).to_s
    erb :results
    # binding.pry
  end
end

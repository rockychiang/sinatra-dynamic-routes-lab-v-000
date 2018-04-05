require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get "/square/:number" do
    @num = params[:number].to_i * params[:number].to_i
    "#{@num}"
  end

  get "/say/:number/:phrase" do 
    @phrase = params[:phrase]
    params[:number].to_i.times do
      "#{@phrase}"
    end
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = []
    params.each do |k, v|
      @words << v
      
  
end
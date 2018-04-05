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
  
  get ""
  
end
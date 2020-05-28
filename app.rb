require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    name = params[:name]
    return name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    return (number**2).to_s
  end
  
  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    output = ""
    
    return number.to_s
    
    while number > 0
      output = output + phrase
      number -= 1
    end
    
    output = output + "."
    return output
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  end
  
  get '/:operation/:number1/:number2' do
  end
end
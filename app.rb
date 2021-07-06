require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get "/" do
    "Hello World"
  end

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i*params[:number].to_i}"
  end




  get '/say/:number/:phrase' do
    str = ""
    @phrase = params[:phrase]
    params[:number].to_i.times { str += "#{@phrase}\n" }
    str
  end
  #do we need a phrase variable? and just replace the phrase variable with params?

  # get '/say/:number/:phrase' do
  #   str = ""
  #   params[:number].to_i.times { str += "#{params[:phrase]}\n" }
  #   #the str part in the bracket allows us to add strings to the string we already have
  # end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]+ " "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @value = "#{params[:number].to_iparams[:number].to_i}"
    binding.pry
  end

end
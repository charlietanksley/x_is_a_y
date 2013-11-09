require_relative 'assignments'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

post '/assign' do
  xs = Splitter.split(params['x'])
  ys = Splitter.split(params['y'])
  @assignments = Assignments.new(x: xs, y: ys).set

  erb :assignments
end

Splitter = Struct.new(:string) do
  def self.split(string)
    new(string).split
  end

  def split
    string.split("\n")
    .map { |string| string.strip }
  end
end

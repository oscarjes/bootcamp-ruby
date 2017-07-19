require 'bundler/setup'
Bundler.require

require_relative "list"

get "/" do
  @list = List.new
  @list.display_html
end
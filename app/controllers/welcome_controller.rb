require 'nokogiri'
require 'open-uri'

class WelcomeController < ApplicationController
  def index
    x = rand(0..1)
    if(x == 0)
      @a = "About to divide by 0"
    else
      @a = 1/x
    end

    url = "https://www.youtube.com/feed/trending"
    @doc = Nokogiri::HTML(open(url))
  end
end

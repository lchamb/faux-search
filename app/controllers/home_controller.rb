class HomeController < ApplicationController
  
  def index
  end

  def search_results
    @query = params[:q]
    @results = [
      { title: "Feline Cat", price: 50, url: "http://www.placekitten.com/240/240" },
      { title: "Fierce Cat", price: 50, url: "http://www.placekitten.com/234/234" },
      { title: "Fluffy Cat", price: 65, url: "http://www.placekitten.com/230/230" },
      { title: "Naughty Cat", price: 65, url: "http://www.placekitten.com/224/224" },
      { title: "Friendly Cat", price: 75, url: "http://www.placekitten.com/220/220" },
      { title: "Silly Cat", price: 75, url: "http://www.placekitten.com/214/214" },
      { title: "Blasé Cat", price: 75, url: "http://www.placekitten.com/248/248" },
      { title: "Bold Cat", price: 40, url: "http://www.placekitten.com/200/200" }
    ].shuffle
  end

end
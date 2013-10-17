class HomeController < ApplicationController
  
  def index
  end

  def search_results
    @products = [
      { title: "Feline Cat", price: 50, url: "http://www.placekitten.com/240/240" },
      { title: "Fluffy Cat", price: 65, url: "http://www.placekitten.com/230/230" },
      { title: "Friendly Cat", price: 75, url: "http://www.placekitten.com/220/220" },
      { title: "Bold Cat", price: 40, url: "http://www.placekitten.com/210/210" }
    ]
  end

end
class HomeController < ApplicationController
  
  def index
  end

  def search_results
    @query = params[:q]
    @results = Kaminari.paginate_array(scope).page(params[:page]).per(4)
  end


  private
  def scope
    [
      FauxResult.new({ title: "Feline Cat", price: 50, url: "http://www.placekitten.com/240/240" }),
      FauxResult.new({ title: "Fierce Cat", price: 50, url: "http://www.placekitten.com/234/234" }),
      FauxResult.new({ title: "Fluffy Cat", price: 65, url: "http://www.placekitten.com/230/230" }),
      FauxResult.new({ title: "Naughty Cat", price: 65, url: "http://www.placekitten.com/224/224" }),
      FauxResult.new({ title: "Friendly Cat", price: 75, url: "http://www.placekitten.com/220/220" }),
      FauxResult.new({ title: "Silly Cat", price: 75, url: "http://www.placekitten.com/214/214" }),
      FauxResult.new({ title: "Blasé Cat", price: 75, url: "http://www.placekitten.com/248/248" }),
      FauxResult.new({ title: "Bold Cat", price: 40, url: "http://www.placekitten.com/200/200" })
    ]
  end
end
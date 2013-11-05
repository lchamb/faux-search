class HomeController < ApplicationController
  
  def index
  end

  def search_results
    @query = params[:q]
    
    results = scope
    results = results.sort_by(&:price) if params[:s] == "price-low-high"
    @results = Kaminari.paginate_array(results).page(params[:page]).per(12)
  end

  private

  def scope
    prefixes = %w(Feline Fierce Fluffy Naughty Friendly Silly Blasé Bold)

    23.times.map do |index|
      FauxResult.new({ 
        title: "#{prefixes.sample} #{prefixes.sample} Cat", 
        price: rand(140) + 10, 
        url: "http://www.placekitten.com/#{200 + index}/#{200 + index}" 
        })
    end
  end
end
class FauxResult
  attr_accessor :url, :title, :price
  def initialize(attrs={})
    @url    = attrs[:url] || "http://www.placehold.it/240x240&text=no-image"
    @title  = attrs[:title] || "Fake Cat"
    @price  = attrs[:price] || 0
  end
end
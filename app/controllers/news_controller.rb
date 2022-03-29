 class NewsController < ApplicationController 
  def index
    res = HTTP.get("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=cf4dd2b6995d455a96505fbeb59d415e")
    articles = res.parse(:json)['articles']
    render json: articles
  end
end

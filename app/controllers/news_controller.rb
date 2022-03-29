 class NewsController < ApplicationController 
  def index
    res = HTTP.get("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=#{Rails.application.credentials.news_api_key}")
    articles = res.parse(:json)['articles']
    render json: articles
  end
end

json.array!(@news) do |news|
  json.extract! news, :id, :titre, :texte, :publication
  json.url news_url(news, format: :json)
end

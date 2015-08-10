atom_feed do |feed|
  feed.title "My own blog title"
  feed.updated(@news[0].created_at) if @news.length > 0

  @news.each do |post|
    feed.entry(post, :url => site_news_index_url(params[:site_id])) do |entry|
      entry.title post.titre
      entry.content post.texte, type: 'html'
      entry.url site_news_index_url(post)
    end
  end
end

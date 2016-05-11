atom_feed do |feed|
  feed.title Site.find(params[:site_id]).nom
  feed.updated(@news[0].created_at) if @news.length > 0

  @news.each do |post|
    feed.entry(post, :url => new_url(site_id: params[:site_id], new_id: post)) do |entry|
      entry.title post.titre
      entry.content post.texte, type: 'html'
      entry.url new_url(site_id: params[:site_id], new_id: post)
    end
  end
end

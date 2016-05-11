atom_feed do |feed|
  @site = Site.find(params[:site_id])
  feed.title @site.nom
  feed.updated(@news[0].created_at) if @news.length > 0

  @news.each do |post|
    feed.entry(post, :url => new_url(site_id: @site, new_id: post)) do |entry|
      entry.title post.titre
      entry.content post.texte, type: 'html'
      entry.url new_url(site_id: @site, new_id: post)
    end
  end
end

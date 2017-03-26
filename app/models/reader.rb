# frozen_string_literal: true

# RSS followed by one user
class Reader < Site
  include Mongoid::Document

  set_callback(:create, :after) do |document|
    feed = Feedjira::Feed.fetch_and_parse(document.domaine)
    document.nom = feed.title
    feed.entries.each do |entry|
      News.create(titre: entry.title,
                  texte: entry.content,
                  publication: entry.published,
                  auteur: entry.author,
                  site: document)
    end
    document.save
  end
end

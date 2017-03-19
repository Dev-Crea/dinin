# frozen_string_literal: true

class Reader < Site
  include Mongoid::Document

  set_callback(:create, :after) do |document|
    feed = Feedjira::Feed.fetch_and_parse(document.domaine)

    document.nom = feed.title

    feed.entries.each do |entry|
      logger.debug entry.title
      News.create(titre: entry.title,
                  texte: entry.content,
                  publication: entry.published,
                  auteur: entry.author,
                  site: document)
    end

    document.save
  end
end

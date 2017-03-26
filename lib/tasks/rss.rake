# frozen_string_literal: true

namespace :rss do
  desc 'Search new news in feeds'
  task search: :environment do
    Readers.all.each do |reader|
      feeds = Feedjira::Feed.fetch_and_parse(reader.domaine)
      feeds.entries.each do |entry|
        News.create(titre: entry.title,
                    texte: entry.content,
                    publication: entry.published,
                    auteur: entry.author,
                    site: reader)
      end
      reader.save
    end
  end
end

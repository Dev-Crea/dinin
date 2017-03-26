# frozen_string_literal: true

# rubocop:disable Style/Next

namespace :rss do
  desc 'Search new news in feeds'
  task search: :environment do
    readers = Reader.all
    readers.each do |reader|
      feeds = Feedjira::Feed.fetch_and_parse(reader.domaine)
      feeds.entries.each do |entry|
        unless News.find_title(entry.title)
          News.create(titre: entry.title,
                      texte: entry.content,
                      publication: entry.published,
                      auteur: entry.author,
                      site: reader)
        end
      end
      reader.save
    end
  end
end
# rubocop:enable Style/Next

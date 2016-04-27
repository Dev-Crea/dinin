require 'test_helper'

class NewsTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'should save news with site and user' do
    news = News.new(titre: 'Opening', texte: 'bla bla ...',
                    publication: Time.zone.today, auteur: 'Michel')
    news.site = Site.new
    news.utilisateur = Utilisateur.new
    assert news.save
  end

  test 'should not save news without site and user' do
    news = News.new
    assert_not news.save
  end
end

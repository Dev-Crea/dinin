class NewsControllerTest < ActionController::TestCase
  def setup
    @request.env['devise.mapping'] = Devise.mappings[:utilisateur]
    sign_in FactoryGirl.create(:utilisateur)

    @news = News.new(titre: 'Opening', texte: 'bla bla ...',
                     publication: Time.zone.today, auteur: 'Michel')
    @site = Site.new(nom: 'DevCrea', domaine: 'http://dev-crea.com')
  end
end

class SitesControllerTest < ActionController::TestCase
  def setup
    @request.env['devise.mapping'] = Devise.mappings[:utilisateur]
    sign_in FactoryGirl.create(:utilisateur)

    @site = Site.new(nom: 'DevCrea', domaine: 'http://dev-crea.com')
  end
end

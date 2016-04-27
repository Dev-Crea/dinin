class SitesControllerTest < ActionController::TestCase
  def setup
    @request.env['devise.mapping'] = Devise.mappings[:utilisateur]
    sign_in FactoryGirl.create(:utilisateur)
    @site = Site.new(nom: 'DevCrea', domaine: 'http://dev-crea.com')
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test 'should get show' do
    get :show, id: @site.id
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test 'should get edit' do
    get :edit, id: @site.id
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  def teardown
    @site = nil
  end
end

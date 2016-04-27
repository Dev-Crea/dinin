class SitesControllerTest < ActionController::TestCase
  def setup
    @request.env['devise.mapping'] = Devise.mappings[:utilisateur]
    sign_in FactoryGirl.create(:utilisateur)

    @site = Site.new(nom: 'DevCrea', domaine: 'http://dev-crea.com')
  end

  test 'should get index' do
    get :index
    assert_response :redirect
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create site' do
    assert_difference('Site.count') do
      post :create, site: {}
    end

    assert_redirected_to site_path(assigns(:site))
  end

  test 'should show site' do
    get :show, id: @site
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @site
    assert_response :success
  end

  test 'should update site' do
    patch :update, id: @site, site: {}
    assert_redirected_to site_path(assigns(:site))
  end

  test 'should destroy site' do
    assert_difference('Site.count', -1) do
      delete :destroy, id: @site
    end

    assert_redirected_to sites_path
  end
end

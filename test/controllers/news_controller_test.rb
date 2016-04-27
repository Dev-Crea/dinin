class NewsControllerTest < ActionController::TestCase
  def setup
    @request.env['devise.mapping'] = Devise.mappings[:utilisateur]
    sign_in FactoryGirl.create(:utilisateur)

    @news = News.new(titre: 'Opening', texte: 'bla bla ...',
                     publication: Time.zone.today, auteur: 'Michel')
    @sites = Sites.all.last
  end

  test 'should get index' do
    get :index, site_id: @sites
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test 'should get new' do
    get :new, site_id: @sites
    assert_response :success
  end

  test 'should create news' do
    assert_difference('News.count') do
      post :create, news: {
        publication: @news.publication, texte: @news.texte,
        titre: @news.titre }, site_id: @sites, id: @news
    end

    assert_redirected_to news_path(assigns(:news))
  end

  test 'should show news' do
    get :show, id: @news.id, site_id: @sites.id
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @news.id, site_id: @sites.id
    assert_response :success
  end

  test 'should update news' do
    patch :update, id: @news.id, news: {
      publication: @news.publication, texte: @news.texte,
      titre: @news.titre }, site_id: @sites
    assert_redirected_to news_path(assigns(:news))
  end

  test 'should destroy news' do
    assert_difference('News.count', -1) do
      delete :destroy, id: @news.id
    end

    assert_redirected_to news_index_path
  end

  def teardown
    @news.delete
  end
end

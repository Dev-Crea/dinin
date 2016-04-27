require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'should save sites without news but with user' do
    sites = Site.new(nom: 'DevCrea', domaine: 'http://dev-crea.com')
    sites.utilisateur = Utilisateur.new
    assert sites.save
  end

  test 'should not save sites without news and user' do
    sites = Site.new
    assert_not sites.save
  end
end

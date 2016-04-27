FactoryGirl.define do
  factory :utilisateur do |f|
    f.email 'supertest@d2go.fr'
    f.password 'supermotdepasse'
    f.password_confirmation 'supermotdepasse'
    f.confirmed_at Time.zone.today
    f.nom 'Michel'
    f.prenom 'lehciM'
  end
end

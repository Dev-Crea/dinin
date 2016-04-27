FactoryGirl.define do
  sequence(:email) { |n| "super-test-#{n}@d2go.fr" }
  factory :utilisateur do
    email
    password 'supermotdepasse'
    password_confirmation 'supermotdepasse'
    confirmed_at Time.zone.today
    nom 'Michel'
    prenom 'lehciM'
  end
end

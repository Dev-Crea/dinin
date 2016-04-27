FactoryGirl.define do
  sequence(:email) { |n| "super-test-#{n}@d2go.fr" }
  factory :utilisateur do |f|
    f.email email
    f.password 'supermotdepasse'
    f.password_confirmation 'supermotdepasse'
    f.confirmed_at Time.zone.today
    f.nom 'Michel'
    f.prenom 'lehciM'
  end
end

FactoryGirl.define do
  factory :utilisateur do |user|
    user.email { Faker::Internet.email }
    user.password 'supermotdepasse'
    user.password_confirmation 'supermotdepasse'
    user.confirmed_at Time.zone.today
    user.nom 'Michel'
    user.prenom 'lehciM'
  end
end

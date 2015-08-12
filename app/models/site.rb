class Site
  include Mongoid::Document
  include Mongoid::Timestamps

  field :nom, type: String
  field :domaine, type: String

  has_many :news
  belongs_to :utilisateur
end

# Class to model site
class Site
  # Inclusions
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  # Fields
  field :nom, type: String
  field :domaine, type: String
  field :description, type: String, default: 'Pensez à décrire votre site.'

  # Relations
  has_many :news
  belongs_to :utilisateur

  # Validations
  validates :nom, presence: true
  validates :domaine, presence: true
  validates :utilisateur, presence: true
  validates :news, associated: true
end

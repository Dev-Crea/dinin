# Class to model news
class News
  # Inclusions
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  # Fields
  field :titre, type: String
  field :texte, type: String
  field :publication, type: Date
  field :auteur, type: String

  ## Relations
  belongs_to :site
  belongs_to :utilisateur

  ## Validations
  validates :titre, presence: true
  validates :texte, presence: true
  validates :publication, presence: true
  validates :auteur, presence: true
  validates :site, presence: true
  validates :utilisateur, presence: true
end

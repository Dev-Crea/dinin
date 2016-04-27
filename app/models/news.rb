# Class to model news
class News
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :titre, type: String
  field :texte, type: String
  field :publication, type: Date
  field :auteur, type: String

  ## Relation
  belongs_to :site
  belongs_to :utilisateur
end

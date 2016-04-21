# Class to model news
class News
  include Mongoid::Document
  include Mongoid::Timestamps

  field :titre, type: String
  field :texte, type: String
  field :publication, type: Date
  field :auteur, type: String

  ## Relation
  belongs_to :site
  belongs_to :utilisateur
end

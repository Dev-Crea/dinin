# Class to model site
class Site
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :nom, type: String
  field :domaine, type: String

  has_many :news
  belongs_to :utilisateur
end

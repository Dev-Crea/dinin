# frozen_string_literal: true

# Class to model site
class Site
  # Inclusions
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  # Enumeration
  TYPES = %w(reader writer).freeze

  # Fields
  field :domaine,       type: String
  field :nom,           type: String
  field :description,   type: String, default: 'Pensez à décrire votre site.'

  # Relations
  embeds_many :news
  has_many :tags
  belongs_to :utilisateur

  # Validations
  validates :domaine, presence: true
  validates :utilisateur, presence: true

  scope :all, ->(user) { where('utilisateur_id': user) }
end

# frozen_string_literal: true

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
  embedded_in :site

  ## Validations
  validates :titre, presence: true
  validates :texte, presence: true
  validates :publication, presence: true
  validates :auteur, presence: true
  validates :site, presence: true

  def self.find_title(title)
    News.fin_by(titre: title)
  rescue
    false
  end
end

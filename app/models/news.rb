class News
  include Mongoid::Document
  include Mongoid::Timestamps

  field :titre, type: String
  field :texte, type: String
  field :publication, type: Date

  belongs_to :site
end

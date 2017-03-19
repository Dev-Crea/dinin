# frozen_string_literal: true

class Writer < Site
  include Mongoid::Document

  # Validations
  validates :nom, presence: true
  validates :news, associated: true
end

# frozen_string_literal: true

# app/models/role.rb
class Role < ApplicationRecord
  # => Constants ----------------------------------

  # => Enums --------------------------------------

  # => Associations -------------------------------
  has_many :users

  # => Validations --------------------------------
  validates :name, presence: true

  # => Scopes -------------------------------------

  # => Public methods -----------------------------

  # => Private methods ----------------------------

  # => Protected methods --------------------------
end

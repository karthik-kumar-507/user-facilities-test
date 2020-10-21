# frozen_string_literal: true

# app/models/facility.rb
class Facility < ApplicationRecord
  # => Constants ----------------------------------
  # has_many :user_facilities
  # has_many :users, through: :user_facilities
  has_and_belongs_to_many :users

  # => Enums --------------------------------------

  # => Associations -------------------------------

  # => Validations --------------------------------
  validates :name, presence: true

  # => Scopes -------------------------------------

  # => Public methods -----------------------------

  # => Private methods ----------------------------

  # => Protected methods --------------------------
end

# frozen_string_literal: true

# app/models/facilities_users.rb
class FacilitiesUsers < ApplicationRecord
  # => Constants ----------------------------------

  # => Enums --------------------------------------

  # => Associations -------------------------------
  belongs_to :user
  belongs_to :facility

  # => Validations --------------------------------
  validates :user_id, :facility_id, presence: true

  # => Scopes -------------------------------------

  # => Public methods -----------------------------

  # => Private methods ----------------------------

  # => Protected methods --------------------------
end

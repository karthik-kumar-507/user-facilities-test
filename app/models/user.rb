# frozen_string_literal: true

# app/models/user.rb
class User < ApplicationRecord
  # => Constants ----------------------------------

  # => Enums --------------------------------------

  # => Associations -------------------------------
  belongs_to :role
  # has_many :user_facilities
  # has_many :facilities, through: :user_facilities
  has_and_belongs_to_many :facilities

  # => Validations --------------------------------
  validates :first_name, :last_name, :email, :dob, :gender,
            :role_id, presence: true

  # => Scopes -------------------------------------

  # => Public methods -----------------------------
  def full_name
    "#{first_name} #{last_name}"
  end

  # => Private methods ----------------------------

  # => Protected methods --------------------------

end

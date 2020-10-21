# frozen_string_literal: true

# db/migrate/create_users.rb
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false, limit: 100, index: true
      t.string :last_name, null: false, limit: 100, index: true
      t.string :email, null: false, limit: 100
      t.date :dob, null: false
      t.string :gender, null: false, index: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end

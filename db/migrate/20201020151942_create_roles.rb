# frozen_string_literal: true

# db/migrate/create_roles.rb
class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :name, null: false, limit: 50, index: true

      t.timestamps
    end
  end
end

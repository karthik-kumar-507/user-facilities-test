# frozen_string_literal: true

# db/migrate/create_facilities.rb
class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string :name, null: false, limit: 100, index: true

      t.timestamps
    end
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# => Creating Roles ----------------------------------
roles = ['Super Admin', 'Admin', 'Manager']
roles.each do |role|
  Role.create!(name: role)
end

# => Creating Facilities ------------------------------
facilities = %w[Organization1 Organization2 Organization3]
facilities.each do |facility|
  Facility.create!(name: facility)
end



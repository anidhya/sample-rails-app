# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#['admin', 'editor', 'reporter'].each do |role|
#  Role.find_or_create_by_name role
#end

User.create do |u|
  u.email = 'admin@local.host'
  u.password = 'admin123'
  u.password_confirmation = 'admin123'
  u.role_id = 1
end

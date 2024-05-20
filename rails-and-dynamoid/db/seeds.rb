# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Notification.create([
  { title: 't1', start_at: Time.current },
  { title: 't2', start_at: Time.current + 1.hour },
  { title: 't3', start_at: Time.current + 2.hour, end_at: Time.current + 3.hours }
])

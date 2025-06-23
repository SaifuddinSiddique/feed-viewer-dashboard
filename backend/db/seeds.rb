require 'faker'

puts "Seeding CallLogs..."

10.times do
  CallLog.create!(
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    duration: rand(30..3600),
    call_type: %w[incoming outgoing missed].sample,
    called_at: Faker::Time.backward(days: 14)
  )
end

puts "Seeding Alerts..."

10.times do
  Alert.create!(
    alert_type: %w[System Security Application].sample,
    message: Faker::Lorem.sentence(word_count: 8),
    severity: %w[low medium high critical].sample
  )
end

puts "Seeding SystemLogs..."

10.times do
  SystemLog.create!(
    system_name: Faker::App.name,
    log_level: %w[INFO WARN ERROR FATAL].sample,
    log_message: Faker::Lorem.paragraph(sentence_count: 3),
    log_time: Faker::Time.backward(days: 30)
  )
end

puts "✅ Seed complete!"
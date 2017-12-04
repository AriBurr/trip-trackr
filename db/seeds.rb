5.times do |n|
  name = Faker::TwinPeaks.location
  Location.create!(name: name)
end

FactoryBot.define do
  factory :profile do
    sequence(:name){ |n| "User no. #{n}" }
    age {rand(1..100)}
    bio {"Flatland! Hypatia. Galaxies Orion's sword globular star cluster? Light years quasar as a patch of light gathered by gravity Vangelis radio telescop'"}
  end
end
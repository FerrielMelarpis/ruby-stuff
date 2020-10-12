FactoryBot.define do
  factory :address do
    sequence(:street){ |n| "Street no. #{n}" }
    city {'Banff'}
    state {'Alberta'}
    postcode {9000}

    profile
  end
end
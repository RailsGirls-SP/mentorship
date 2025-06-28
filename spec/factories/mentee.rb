# frozen_string_literal: true

FactoryBot.define do
  factory :mentee do
    sequence(:name) { |n| "Mentee #{n}" }
    sequence(:email) { |n| "mentee#{n}@example.com" }
    linkedin_url { "https://www.linkedin.com/in/mentee#{rand(1000..9999)}" }
  end
end

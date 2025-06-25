FactoryBot.define do
  factory :mentor do
    sequence(:name) { |n| "Mentora #{n}" }
    current_title { "Desenvolvedora" }
    current_company { "Empresa Marota"}
    sequence(:email) { |n| "mentora#{n}@email.com" }
    sequence(:linkedin_url) { |n| "https://www.linkedin.com/in/mentora#{n}" }
    bio { "Desenvolvedora muito legal, apaixonada pelo que faz e disposta a ensinar TUDO para outras mulheres maravilhosas."}
    mentorship_topics { "ruby,rails,sql" }
  end
end

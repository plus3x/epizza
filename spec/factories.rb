FactoryGirl.define do
  factory :order do
    sequence(:name)  { |n| "John##{n}"            }
    sequence(:email) { |n| "john#{n}@mail.com"    }
    sequence(:phone) { rand(1_000_000..9_999_999) }
  end

  factory :pizza do
    sequence(:type) { |n| "Taste##{n}" }
  end
end
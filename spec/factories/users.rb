FactoryGirl.define do 
  factory :user do
    name "Student One"
    email "student@example.org"
    password "abc123"
    password_confirmation "abc123"
  end
end
FactoryGirl.define do 
  factory :mentor do
    name "Mentor One"
    info "Test Mentor"
    email "will@bitmakerlabs.com"
    monday_available_from 9
    monday_available_to 17
    tuesday_available_from 9
    tuesday_available_to 17
    wednesday_available_from 9
    wednesday_available_to 17
    thursday_available_from 9
    thursday_available_to 17
    friday_available_from 9
    friday_available_to 17
    saturday_available_from 9
    saturday_available_to 17
    sunday_available_from 9
    sunday_available_to 17
  end
end
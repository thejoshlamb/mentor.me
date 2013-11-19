

FactoryGirl.define do
  factory :meeting do
  	date Date.new(2001,11,26)
    start_time 12
    end_time 1
    duration_mins 60
    mentor_id 1
    user_id 1
  end
end

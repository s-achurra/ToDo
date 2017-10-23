FactoryGirl.define do
  factory :todo do
    title "Some Title"
    due_date Date.today
    details "Here are some details"
  end
end

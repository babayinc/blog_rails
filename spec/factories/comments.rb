FactoryGirl.define do
  factory :comment do
    author "Comment Author"
    sequence(:body) { |n| "comment body #{n}"}
  end
end
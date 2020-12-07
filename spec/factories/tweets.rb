FactoryBot.define do
  factory :tweet do
    text { "123abcあいう１２３" }
    association :user
  end
end

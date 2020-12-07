FactoryBot.define do
  factory :area do
    dive_day {"2020-02-02"}
    region {"沖縄県"}
    entry_id {2}
    association :user
  end
end

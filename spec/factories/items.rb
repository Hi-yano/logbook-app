FactoryBot.define do
  factory :item do
    thickness { 3 }
    weight { 3 }
    suitstype_id { 2 }
    capacity_id { 3 }
    type_id { 2 }
    association :area
  end
end

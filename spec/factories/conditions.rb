FactoryBot.define do
  factory :condition do
    weather { '晴れ' }
    wave { 1 }
    wind { 2 }
    temperature { 30 }
    water_temperature { 25 }
    tide_id { 2 }
    association :area
  end
end

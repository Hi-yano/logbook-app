FactoryBot.define do
  factory :logbook do
    entry_time { '12:00' }
    exit_time { '12:00' }
    text { 'あいうえお' }
    point { 'あいうえお' }
    start_air { 200 }
    finish_air { 100 }
    max_depth { 20 }
    ave_depth { 10 }
    count { 1 }
    association :area
  end
end

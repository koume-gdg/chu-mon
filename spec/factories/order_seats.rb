FactoryBot.define do
  factory :order_seat do
    token { 'tok_abcdefghijk00000000000000000' }
    seat { Faker::Number.between(from: 1, to: 30) }
    association :menu
  end
end

FactoryBot.define do
  factory :cart do
    order "OrderItems"
    price 5.75
  end
end

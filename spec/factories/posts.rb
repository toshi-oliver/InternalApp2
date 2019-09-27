FactoryBot.define do
  factory :post do
    name {'テストクライアント'}
    email {'test_client@example.com'}
    phone_number {'09049389103'}
    near_station {'江古田駅'}
    parking_address {'東京都練馬区豊玉北2-12-4'}
    user
  end
end

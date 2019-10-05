FactoryBot.define do
  factory :user do
    name { 'テストユーザー'}
    email { 'test1@example.co.jp'}
    password {'password'}
  end
end

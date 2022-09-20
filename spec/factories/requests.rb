FactoryBot.define do
  factory :request do
    sex_id  { 2 }
    text    { 'test' }
    user
  end
end

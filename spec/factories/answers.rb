FactoryBot.define do
  factory :answer do
    text { 'test' }
    user
    request

    after(:build) do |answer|
      answer.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

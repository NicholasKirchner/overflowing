FactoryGirl.define do

  factory :vote do
    votable_id {1}
    votable_type {"Post"}
    user
    value {1}

    factory :down_vote do
      votable_id {2}
      value {-1}
    end
  end


  factory :comment do
    content { Faker::Lorem.sentences(3) }
    post
    user
  end

  factory :post do
    title { Faker::Lorem.sentence(2) }
    image_url { Faker::Internet.url }
    user
  end

  factory :user do
    email { Faker::Internet.email }
    # sequence(:email) {|n| "user_#{Time.now.to_i}@gmail.com"}
    name { Faker::Name.name }
    password 'password'
  end
end  


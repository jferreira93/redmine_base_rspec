FactoryBot.define do
  factory :user do
    sequence(:firstname) {|count| "User Firstname #{ count }" }
    sequence(:lastname)  {|count| "User Lastname #{ count }" }
    sequence(:login)     {|count| "User-login-#{ count }" }
    sequence(:mail)      {|count| "User-mail-#{ count }@example.com" }

    created_on { 1.day.ago.to_s(:db) }
    last_login_on { 1.day.ago.to_s(:db) }
    updated_on { 1.day.ago.to_s(:db) }

    # The password is `jsmith`
    hashed_password { 'b5b6ff9543bf1387374cdfa27a54c96d236a7150' }
    salt { '82090c953c4a0000a7db253b0691a6b4' }

    language { 'en' }
    mail_notification { 'all' }
    type { 'User' }

    status { 1 }
    admin { false }

    trait :admin do
      # The password is `admin`
      hashed_password { 'b5b6ff9543bf1387374cdfa27a54c96d236a7150' }
      salt { '82090c953c4a0000a7db253b0691a6b4' }
      admin { true }
    end
  end
end

FactoryBot.define do
  factory :message do
    user 1
    date "2018-06-05 13:53:46"
    content "MyString"
  end
  factory :user do
    username "Juan Perez"
    email "juanperez@mail.com"
    password "clave1234"
  end
end
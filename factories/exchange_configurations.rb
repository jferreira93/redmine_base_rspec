  # create_table "exchange_configurations", force: :cascade do |t|
  #   t.string   "endpoint",              limit: 255, default: "https://correo.hg.com.uy/ews/exchange.asmx", null: false
  #   t.string   "email",                 limit: 255,                                                        null: false
  #   t.string   "encrypted_password",    limit: 255,                                                        null: false
  #   t.string   "encrypted_password_iv", limit: 255
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end

FactoryBot.define do
  factory :exchange_configuration do
    endpoint { 'https://correo.hg.com.uy/ews/exchange.asmx' }
    email { 'loopstudio@hg.com.uy' }
    password { 'Hg.2018.' }
  end
end

  # create_table "subscriptions", force: :cascade do |t|
  #   t.integer  "exchange_configuration_id", limit: 4
  #   t.string   "folder",                    limit: 255, default: "Bandeja de Entrada", null: false
  #   t.string   "subscription_id",           limit: 255
  #   t.string   "watermark",                 limit: 255
  #   t.boolean  "notification_is_alive",                 default: false
  #   t.integer  "user_id",                   limit: 4,                                  null: false
  #   t.integer  "project_id",                limit: 4,                                  null: false
  #   t.integer  "tracker_id",                limit: 4,                                  null: false
  #   t.integer  "priority_id",               limit: 4,                                  null: false
  #   t.integer  "status_id",                 limit: 4,                                  null: false
  #   t.integer  "category_id",               limit: 4,                                  null: false
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end

FactoryBot.define do
  factory :subscription do
    association :exchange_configuration, factory: :exchange_configuration
    folder { 'Agesic' }
    association :user, factory: :user
    association :project, factory: :project
    association :tracker, factory: :tracker
    status_id { 1 }
    category_id { 1 }
    priority_id { 1 }
  end
end

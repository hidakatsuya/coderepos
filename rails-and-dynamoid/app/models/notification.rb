class Notification
  include Dynamoid::Document

  table name: :notification, key: :id

  field :title, :string
  field :detail_url, :string
  field :start_at, :datetime
  field :end_at, :datetime

  global_secondary_index hash_key: :start_at, range_key: :end_at
end

class Notification
  include Dynamoid::Document

  table name: :notification, key: :id

  field :title, :string
  field :detail_url, :string
  field :start_at, :datetime
  field :end_at, :datetime
end

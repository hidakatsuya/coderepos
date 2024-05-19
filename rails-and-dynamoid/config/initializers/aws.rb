require 'dynamoid'

Dynamoid.configure do |config|
  config.region = 'us-east-1'
  config.access_key = 'dummy'
  config.secret_key = 'dummy'
  config.endpoint = 'http://localstack:4566'
end

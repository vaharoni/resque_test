require 'resque/server'

$redis ||= Redis.new host: 'localhost', port: 6379, db: 0
Resque.redis = $redis
require_relative './api_keys.rb'
$client = Twitter::REST::Client.new do |config|
    config.consumer_key=$apiKey
    config.consumer_secret= $secretKey
    config.access_token=$accessToken
    config.access_token_secret=$secretToken
  end
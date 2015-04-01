require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key       = '14ftChg8kkOlcefEkKwjxvjaC'
  config.consumer_secret    = 'h9baw3dn3mhRRIFaMIuJxCLVDAd9PEnLkX9wM7jDolfjBxMUDd'
  config.oauth_token        = '307627648-awCOiMebU46ymuqMzFAQD3cCDMBUhp39sxHtW3e5'
  config.oauth_token_secret = 'KAjeWKRUPUFqZAoG3hi2eJefq1b8WMx9lArKWQuZTxe0L'
  config.auth_method        = :oauth
end

def sample
  TweetStream::Client.new.sample do |status|
    puts "#{status.user.name} - #{status.text}"
  end
end

def track(term)
  TweetStream::Client.new.track(term) do |status|
    puts "#{status.user.name} - #{status.text}"
  end
end

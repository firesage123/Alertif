require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
# File not needed
# put your own credentials here 
account_sid = 'AC62e2fbdd4e525040a2ba75be63acc904'
auth_token = 'e05696dc4e52734fc388bd05f018c3c3'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new(account_sid, auth_token)

@message = @client.account.messages.create(
  from: '+13317029479',
  to: '+16302102930',
  body: 'This is the ship that made the Kessel Run in fourteen parsecs?',
  media_url: 'https://c1.staticflickr.com/3/2899/14341091933_1e92e62d12_b.jpg'
)

puts @message.subresource_uris
require_relative 'skinder'

skinder = Skinder.new

event_code = 2015
message = "This is an awesome message sent from ruby"
user = "BeeNag"
email = "bnaglerose88@gmail.com"

response = skinder.post(event_code, message, user, email)

puts response.code # Status code
require_relative 'yoda_speak'
require_relative 'skinder'

yoda_speak = YodaSpeak.new
skinder = Skinder.new

plain_text = File.read('data.txt')

yoda_text = yoda_speak.translate plain_text

event_code = 2015
message = yoda_text
user = "BeeNag"
email = "bnaglerose88@gmail.com"

response = skinder.post(event_code, message, user, email)

puts response.code
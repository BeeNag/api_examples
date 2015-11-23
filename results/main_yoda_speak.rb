require_relative 'yoda_speak'

yoda_speak = YodaSpeak.new

plain_text = "We should take a holiday"

yoda_text = yoda_speak.translate plain_text 

puts yoda_text
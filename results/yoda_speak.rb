# We need to use classes and functions from these gems
require 'unirest'
require 'nokogiri'

class YodaSpeak
    def translate(plain_text)
        # all spaces need to be replaced with a plus sign so that we produce a valid URL
        input = plain_text.gsub! /\s+/, '+'

        # make a hash with the required request headers
        request_headers = {}
        request_headers["Accept"] = "text/plain" # this requests accepts a response in plain text and not other formats e.g. audio
        request_headers["X-Mashape-Key"] = "YK9cMTQ2uJmshG36ASZtzZy3omeDp1ySVaQjsnGEhTDMjWWRkL" # the authentication key

        # make a GET request to yodaspeak API
        response = Unirest.get("https://yoda.p.mashape.com/yoda?sentence=#{input}", headers: request_headers )

        # parsing response from API
        # this uses 'xpath' to extract the first paragraph from the response
        parsee = Nokogiri::HTML(response.body)
        parser = parsee.xpath('//*/body/p').first

        # return the content
        parser.content
    end
end
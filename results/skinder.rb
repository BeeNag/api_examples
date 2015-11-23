require 'unirest'

class Skinder
  def post(event_code, message, username, email)

      post_url = "http://skinder.herokuapp.com/events/#{event_code}/messages"

      response = Unirest.post post_url, 
                        headers:{ "Accept" => "application/json" }, 
                        parameters:{ :message => { :body => message, :username => username, :email => email } }

      return response
  end
end
require 'sinatra'

get '/' do
	erb :'index'
end

post '/sms' do
	# send random message (will be pulled from db) from Twilio number to recipient number
	message = "Hello this is a random happy message from #{params[:sender_name]}."


	if send_message(params[:recipient_number], message) == 200
		# success message to page
	else
		# error message to page
	end
end

class SendTextController < ApplicationController
  def index
  end

  def send_text_message
    number_to_send_to = params[:session][:license]
    msgc = params[:session][:content]
    u = User.find_by_licensep(number_to_send_to)
    phone = u[:phonen]
    twilio_sid = "AC62e2fbdd4e525040a2ba75be63acc904"
    twilio_token = "e05696dc4e52734fc388bd05f018c3c3"
    twilio_phone_number = "3317029479"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{phone}",
      :body => "#{msgc}"
    )
  end
end
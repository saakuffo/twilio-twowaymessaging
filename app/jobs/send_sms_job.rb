class SendSmsJob < ActiveJob::Base
  queue_as :default

  def perform(message)
    # Send the SMS now, then update the message status
    SMS.new(message.to).send message.body
    message.update_columns(status: "sent")

  end

end
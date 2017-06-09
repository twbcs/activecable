class AcLinkChannel < ApplicationCable::Channel
  def subscribed
    stream_from "ac_link_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Link.create! talk: data['message']
    #ActionCable.server.broadcast 'ac_link_channel', message: data['message']
  end
end

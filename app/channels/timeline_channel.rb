# frozen_string_literal: true

class TimelineChannel < ApplicationCable::Channel
  def subscribed
    stream_from "timeline:#{current_user.account_id}"
  end
end

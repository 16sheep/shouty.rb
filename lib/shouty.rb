# frozen_string_literal: true

require_relative './coordinate'

class Shouty
  def shouts_heard_by(listener)
    shoutsHeard = {}

    @shouts.each do |shouter, shouts|
      distance = @locations[listener].distance_from(@locations[shouter])
      shoutsHeard[shouter] = shouts if distance < MESSAGE_RANGE
    end

    shoutsHeardFarAway
  end
end

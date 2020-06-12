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
3ab2df0b28395e9132c42b1b79733e1b1abe8de5
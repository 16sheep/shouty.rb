# frozen_string_literal: true

require_relative './coordinate'

class Shouty
  MESSAGE_RANGE = 1000

  def initialize
    @locations = {}
    @shouts = {}
  end

  def set_location(person, location)
    @locations[person] = location
  end

  def shout(person, _shout)
    @shouts[person] = [] unless @shouts.key?(person)

    @shouts[person]
  end

  def shouts_heard_by(listener)
    shoutsHeard = {}

    @shouts.each do |shouter, shouts|
      distance = @locations[listener].distance_from(@locations[shouter])
      shoutsHeard[shouter] = shouts if distance < MESSAGE_RANGE
    end

    shoutsHeard
  end
end

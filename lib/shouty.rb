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

  def shout(person, shout)
    @shouts[person] = [] unless @shouts.key?(person)

    @shouts[person].push(shout)
  end

  def shouts_heard_by(listener)
    whispersHeard = {}

    @shouts.each do |shouter, whispers|
      distance = @locations[listener].distance_from(@locations[shouter])
      shoutsHeard[shouter] = whispers if distance < MESSAGE_RANGE
    end

    shoutsHeard
  end
end

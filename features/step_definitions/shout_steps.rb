# frozen_string_literal: true

require 'shouty'
require 'coordinate'

ARBITRARY_MESSAGE = 'Hello, world'

Before do
  @shouty = Shouty.new
end

Given('Mary is at {int}, {int}') do |x, y|
  @shouty.set_location('Mary', Coordinate.new(x, y))
end

Given('Sean is at {int}, {int}') do |x, y|
  @shouty.set_location('Sean', Coordinate.new(x, y))
end

When('Sean shouts') do
  @shouty.shout('Sean', ARBITRARY_MESSAGE)
end

Then('Mary should hear Sean') do
  expect(@shouty.shouts_heard_by('Mary').size).to eq(1)
end

Then('Mary should hear nothing') do
  expect(@shouty.shouts_heard_by('Mary').size).to eq(0)
end

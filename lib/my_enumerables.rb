# frozen_string_literal: true

# require 'pry'

module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for el in self do # rubocop:disable Style/For
      yield el
    end
    self
  end
end

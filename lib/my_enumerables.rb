# frozen_string_literal: true

# require 'pry'

module Enumerable
  def my_each_with_index
    i = 0
    for el in self do # rubocop:disable Style/For
      yield el, i
      i += 1
    end
    self
  end
end

class Array
  def my_each
    for el in self do # rubocop:disable Style/For
      yield el
    end
    self
  end
end

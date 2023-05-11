# frozen_string_literal: true

module Enumerable
  def my_each_with_index
    i = 0
    my_each do |el|
      yield el, i
      i += 1
    end
    self
  end

  def my_select
    arr = []
    my_each do |el|
      arr << el if yield el
    end
    arr
  end

  def my_all?
    my_each do |el|
      return false unless yield(el)
    end
    true
  end

  def my_any?
    my_each do |el|
      return true if yield(el)
    end
    false
  end

  def my_none?
    my_each do |el|
      return false if yield(el)
    end
    true
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

# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN

  def test_pop!
    # @elements.pop
    els = [1, 2, 3, 4]
    stack = Stack.new(els)
    stack.pop!
    assert(stack.to_a == [1, 2, 3])
    # @elements << element
  end

  def test_push!
    els = [1, 2, 3]
    stack = Stack.new(els)
    assert(stack.push!(4) == [1, 2, 3, 4])
    # @elements << element
  end

  def test_empty?
    # @elements.empty?
    els = []
    stack = Stack.new()
    assert(stack.empty?)
  end

  def test_to_a
    els = [1, 2, 3]
    stack = Stack.new(els)
    assert(els == stack.to_a)
  end

  def test_clear!
    stack = Stack.new([1, 2, 3])
    assert(stack.clear!.empty?)
  end

  def size
    els = [1, 2, 3]
    stack = Stack.new(els)
    assert(els.size == stack.size)
    # @elements.size
  end
  
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
puts test_methods
raise 'StackTest has not tests!' if test_methods.empty?

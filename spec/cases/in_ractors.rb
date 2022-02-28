# frozen_string_literal: true
require './spec/cases/helper'

class Foo
  def self.bar
    sleep 0.1
    1
  end
end

p Parallel.in_ractors(count: 100, ractor: [Foo, :bar])

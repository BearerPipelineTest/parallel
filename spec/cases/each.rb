# frozen_string_literal: true
require './spec/cases/helper'
$stdout.sync = true # otherwise results can go weird...

x = ['a', 'b', 'c', 'd']
result = Parallel.each(x, in_ractors: 2) do |y|
  puts 111
  sleep 0.1 if y == 'a'
end
print result * ' '

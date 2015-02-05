require_relative './my_sort'
require_relative './selection_sort'
require_relative './ruby_sort'

[MySort, SelectionSort, RubySort].each do |c|
  start_time = Time.now
  c.asc (0..10000).to_a
  end_time = Time.now

  puts "#{c}: #{(end_time - start_time)} second."
end

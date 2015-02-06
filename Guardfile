guard :rspec, cmd: "bundle exec rspec" do
  require "guard/rspec/dsl"
  dsl = Guard::RSpec::Dsl.new(self)

  rspec = dsl.rspec
  watch(rspec.spec_helper) { rspec.spec_dir }
  watch(rspec.spec_support) { rspec.spec_dir }
  watch(rspec.spec_files)

  watch(%r{^lib/sort/my_sort.rb$}) { |m| "spec/sort/my_sort_spec.rb" }
  watch(%r{^lib/sort/selection_sort.rb$}) { |m| "spec/sort/selection_sort_spec.rb" }
  watch(%r{^lib/sort/ruby_sort.rb$}) { |m| "spec/sort/ruby_sort_spec.rb" }

  watch(%r{^lib/search/linear_search.rb$}) { |m| "spec/search/linear_search_spec.rb" }
  watch(%r{^lib/search/binary_search.rb$}) { |m| "spec/search/binary_search_spec.rb" }

  ruby = dsl.ruby
  dsl.watch_spec_files_for(ruby.lib_files)
end

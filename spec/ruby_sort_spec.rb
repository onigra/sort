require 'rspec'
require_relative '../lib/ruby_sort'

describe RubySort do
  describe ".asc" do
    let(:array) { [3, 5, 4, 1, 2] }
    subject { RubySort.asc array }
    it { should eq [1, 2, 3, 4, 5] }
  end

  describe ".desc" do
    let(:array) { [3, 5, 4, 1, 2] }
    subject { RubySort.desc array }
    it { should eq [5, 4, 3, 2, 1] }
  end
end

require_relative '../spec_helper'

describe BinarySearch do
  describe ".run" do
    context "検索にヒットする" do
      let(:list) { [10, 1, 3, 5] }
      subject { BinarySearch.run(list, 3) }
      it { should eq "3が2番目に見つかりました" }
    end

    context "検索にヒットしない" do
      let(:list) { [10, 1, 3, 5] }
      subject { BinarySearch.run(list, 7) }
      it { should eq "7は見つかりませんでした" }
    end
  end
end

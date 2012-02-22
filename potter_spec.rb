require './potter'

describe Potter do
  subject {@potter}
  describe "#checkout" do

    context "with zero books" do
      before(:each) do
        @potter = Potter.new
      end

      it "returns $0" do
        @potter.checkout.should eq(0.0)
      end
    end

    context "with one book" do
      before(:each) do
        @potter = Potter.new(1)
      end

      it "returns $8" do
        @potter.checkout.should eq(8.0)
      end
    end

    context "with two different books" do
      before(:each) do
        @potter = Potter.new(1, 2)
      end

      it "returns $15.20" do
        @potter.checkout.should eq(15.20)
      end
    end

    context "with two same and one different" do
      before(:each) do
        @potter = Potter.new(1, 2, 2)
      end

      it "returns $22.80" do
        @potter.checkout.should eq(22.80)
      end
    end

    context "with four copies, two books" do
      before (:each) do
        @potter = Potter.new(1,1,2,2)
      end
      its(:checkout) {should eq(30.40)}
    end

    context "three copies, three books" do
      before(:each) do
        @potter = Potter.new(1,2,3)
      end

      its(:checkout) {should eq(21.60)}
    end

    context "8 copies, 5 books" do
      before(:each) do
        @potter = Potter.new(1,1,2,2,3,3,4,5)
      end

      its(:checkout) {should eq(51.20)}
    end

  end

end

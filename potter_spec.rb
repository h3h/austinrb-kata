require './potter'

describe Potter do

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

      it "returns $" do
        @potter.checkout.should eq(15.20)
      end
    end

  end

end

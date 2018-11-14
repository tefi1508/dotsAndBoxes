require './lib/dot'

describe Dot do

      before(:each) do
            @dot = Dot.new()
      end

      it "Crear punto con x = '1'" do
            @dot.init(1,1,30)
            expect(@dot.getX).to eq 1
      end

      it "Crear punto con y = '1'" do
            @dot.init(1,1,30)
            expect(@dot.getY).to eq 1
      end

      it "Crear punto con radio = '30'" do
            @dot.init(1,1,30)
            expect(@dot.getRadio).to eq 30
      end

end
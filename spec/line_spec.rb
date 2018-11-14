require './lib/line'

describe Line do

      before(:each) do
            @line = Line.new()
      end

      it "Crear linea con posicion x1 = '1'" do
            @line.init(1,2,3,4)
            expect(@line.getX1).to eq 1
      end

      it "Crear linea con posicion x2 = '2'" do
            @line.init(1,2,3,4)
            expect(@line.getX2).to eq 2
      end

      it "Crear linea con posicion y1 = '3'" do
            @line.init(1,2,3,4)
            expect(@line.getY1).to eq 3
      end

      it "Crear linea con posicion y2 = '4'" do
            @line.init(1,2,3,4)
            expect(@line.getY2).to eq 4
      end

      it "Crear linea con atributo 'isVisible' en falso" do
            @line.init(1,2,3,4)
            expect(@line.getVisible).to eq false
      end

end
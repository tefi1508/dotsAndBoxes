require './lib/board'

describe Board do

      before(:each) do
            @board = Board.new()
      end

      it "Crear tablero con 5 filas" do
            @board.init(5,5)
            expect(@board.getRows).to eq 5
      end

      it "Crear tablero con 5 columnas" do
            @board.init(5,5)
            expect(@board.getColumns).to eq 5
      end

end

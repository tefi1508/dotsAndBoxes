require './lib/player'

describe Player do

      before(:each) do
            @player = Player.new()
      end

      it "Crear jugador con nombre 'Jugador 1'" do
            @player.init("Jugador 1","","",0)
            expect(@player.name).to eq "Jugador 1"
      end

      it "Crear jugador con color 'Black'" do
            @player.init("","Black","",0)
            expect(@player.color).to eq "Black"
      end

      it "Crear jugador con ficha 'X'" do
            @player.init("","","X",0)
            expect(@player.mark).to eq "X"
      end

      it "Crear jugador con score en 0" do
            @player.init("","","",0)
            expect(@player.score).to eq 0
      end

      it "Incremetar un punto al score del jugador" do
            @player.init("Jugador","Green","X",0)
            @player.winPoint()
            expect(@player.score).to eq 1
      end

end

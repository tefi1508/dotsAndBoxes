Feature: Start Game 
      Como jugador
      Quiero empezar la partida
      Para distraerme


      Scenario: Comenzar partida
            Given visito la pagina configuracion inicial
            When presione el boton "Empezar partida"
            Then deberia ver la pagina del juego
                
      Scenario: Ver partida 
            Given me encuentro en la pagina de partida
            Then deberia ver el tablero 
            Then deberia ver el socre
            Then deberia ver el turno actual
            Then deberia aparecer los nombres de jugadores
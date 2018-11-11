Feature: Restart game
      Como jugador
      Quiero reiniciar la partida
      Para empezar una nueva partida

      Scenario: Reiniciar partida
            Given estoy en la partida
            When presionoo el boton "Reiniciar"
            Then deberia aparecer la pagina startGame nuevamente
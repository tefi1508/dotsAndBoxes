Feature: Score
      Como jugador
      Quiero visualizar score
      Para ver los puntos actuales que tengo

      Scenario: Ver score
            Given visito la pagina de juego
            Then deberia aparecer el titulo "Score"

      Scenario: Ver nombre de jugador
            Given visito la pagina de juego
            Then deberia aparecer los nombres de los jugadores

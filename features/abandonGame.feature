Feature: Abandone Game
      Como jugador
      Quiero Abandonar el juego
      Para ya no deseo jugar

      Scenario: Boton Abandonar Partida
            Given estoy en la pagina de juego
            When oprimo el boton "Abandonar Partida"
            Then deberia aparecer la pagina de configuracion inicial
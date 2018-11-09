Feature: Abandone Game
      Como jugador
      Quiero Abandonar el juego
      Para ya no deseo jugar

      Scenario: Boton Abandonar Partida
            Given visito la pagina de juego
            When presiono el boton "Abandonar Partida"
            Then deberia aparecer la pagina de configuracion inicial
Feature: Initial Configuration
      Como jugador
      Quiero ver las configuraciones antes de jugar 
      Para jugar 

      Scenario: Mensaje de Ingresa tamaño de tablero
            Given visito la pagina de configuracion inicial
            Then deberia aparecer el mensaje "Ingresa tamaño de tablero:"

      Scenario: Boton Empezar partida
            Given visito la pagina de configuracion inicial
            When presiona el boton "Empezar partida"
            Then deberia ver una pagina nueva
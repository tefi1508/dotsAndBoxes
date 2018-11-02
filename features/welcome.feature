Feature: Welcome
      Como jugador
      Quiero ver un mensaje de bienvenida
      Para sentirme más a gusto

      Scenario: Mensaje de bienvenida
            Given visito la pagina principal
            Then deberia ver el mensaje "bienvenido a Dots & Boxes"

      Scenario: Boton iniciar Juego
            Given visito la pagina principal
            When presiono el boton "Iniciar Juego"
            Then deberia ver la pagina con titulo "Configuracion inicial"
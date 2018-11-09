Given("estoy en la pagina de juego") do
  visit('/startGame')
end

When("oprimo el boton {string}") do |boton|
  click_button(boton)
end

Then("deberia aparecer la pagina de configuracion inicial") do
    visit('/initialConfig')
end

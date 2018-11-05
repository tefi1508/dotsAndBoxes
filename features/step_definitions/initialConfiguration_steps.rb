Given("visito la pagina de configuracion inicial") do
    visit('/initialConfig')
  end
  
  Then("deberia aparecer el mensaje {string}") do |string|
    expect(page).to have_content("Ingresa tamaño de tablero:")
  end
  
  When("presiona el boton {string}") do |string|
    click_button(string)
  end
  
  Then("deberia ver una pagina nueva") do
    visit('/startGame')
  end
  
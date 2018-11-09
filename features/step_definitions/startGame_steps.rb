Given("visito la pagina configuracion inicial") do
    visit('/initialConfig')
  end
  
  When("presione el boton {string}") do |string|
    click_button(string)
  end
  
  Then("deberia ver la pagina del juego") do
    visit('/startGame')
  end
  
  Given("me encuentro en la pagina de partida") do
    visit('/startGame')
  end
  
  Then("deberia ver el socre") do
    expect(page).to have_content("Score")
    expect(page).to have_selector("#Score")
  end
  
  Then("deberia ver el turno actual") do
    expect(page).to have_selector(".currentTurn")
  end

  Then("deberia aparecer los nombres de jugadores") do
    expect(page).to have_css(".players")
end
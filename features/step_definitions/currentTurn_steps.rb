Given("me encuentro en la pagina del juego") do
      visit('/startGame')
end

Then("deberia el nombre de un jugador coloreado") do 
    expect(page).to have_css(".currentTurn")
end
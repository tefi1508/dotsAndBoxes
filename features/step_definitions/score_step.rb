Given("visito la pagina de juego") do
      visit('/startGame')
end

Then("deberia aparecer el titulo {string}") do |string|
      expect(page).to have_content("Score")
      expect(page).to have_selector("#Score")
end

Then("deberia aparecer los nombres de los jugadores") do
      expect(page).to have_css(".players")
end
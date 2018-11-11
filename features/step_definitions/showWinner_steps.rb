Given("estoy en el juego y hay un ganador") do
      visit('/startGame')
end

Then("deberia aparecer el ganador") do
      expect(page).to have_selector("#score")
end

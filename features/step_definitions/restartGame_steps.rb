Given("estoy en la partida") do
      visit('/startGame')
end
    
When("presionoo el boton {string}") do |boton|
      click_button(boton)
end
    
Then("deberia aparecer la pagina startGame nuevamente") do
      visit('/startGame')
      expect(page).to have_content("Partida")
end
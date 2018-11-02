Given("visito la pagina principal") do
      visit('/')
end

Then("deberia ver el mensaje {string}") do |string|
      expect(page).to have_content("Bienvenido a Dots & Boxes")
end
    
When("presiono el boton {string}") do |boton|
      click_button(boton)
end

Then("deberia ver la pagina con titulo {string}") do |string|
      expect(page).to have_content("Configuracion inicial")
end


    
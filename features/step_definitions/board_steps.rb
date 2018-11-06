Given("visito la pagin del tablero") do
    visit('/startGame')
  end
  
  Then("deberia ver el tablero") do
    expect(page).to have_selector("#board")
  end
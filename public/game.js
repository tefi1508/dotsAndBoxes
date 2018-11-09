BOARD = document.getElementById("board");
BOARD_SIZE = BOARD.rows.length;
ROWS = BOARD.rows;
SCORE = document.getElementById("score");
PLAYERS = document.getElementsByClassName("players");
SCORES = document.getElementsByClassName("scoreOfPlayer");
NUMBER_OF_PLAYERS = PLAYERS.length;
CURRENT_PLAYER = 1;


function addId() {
    let idOfCell = 1;
    for (let index = 0; index < BOARD_SIZE; index++) {
        let cells = ROWS[index].cells;
        for (let index2 = 0; index2 < cells.length; index2++) {
            cells[index2].id = idOfCell.toString();
            idOfCell = idOfCell + 1;
        }
    }
}

function addIdToPlayers(){
    let idOfPlayer = 1;
    const player ="player";
    for (let index = 0; index < NUMBER_OF_PLAYERS; index++) {
        PLAYERS[index].id = player + idOfPlayer;
        idOfPlayer++;
    }
}

function addIdToScores(id_player){
    let idOfScore = 1;
    const scoreOfPlayer ="scoreOfPlayer";
    for (let index = 0; index < NUMBER_OF_PLAYERS; index++) {
        SCORES[index].id = scoreOfPlayer + idOfScore;
        idOfScore++;
    } 
}

function switchTurn(){
    let player = "player";
    let new_player;
    document.getElementById(player+CURRENT_PLAYER).classList.remove("currentTurn");
    if(CURRENT_PLAYER < NUMBER_OF_PLAYERS){
        CURRENT_PLAYER = CURRENT_PLAYER+1;
        new_player = player+CURRENT_PLAYER;
        document.getElementById(new_player).classList.add("currentTurn");
    } else {
        CURRENT_PLAYER = 1;
        new_player = player+CURRENT_PLAYER;
        document.getElementById(new_player).classList.add("currentTurn");
    }
}

function updateCurrentPlayerScore(){
    let scoreOfPlayer = "scoreOfPlayer";
    let element = document.getElementById(scoreOfPlayer+CURRENT_PLAYER);
    let score = parseInt(element.innerHTML);
    score++;
    element.innerHTML = score.toString();
}


function selectBorder(btn, direction) {
    td = btn.parentNode;
    td.classList.add(direction);
    verify(td);
    disableButton(btn);
    disableNeighbors(td, direction);
}

function disableButton(btn) {
    btn.classList.add("hidden");
    switchTurn();
}

function disableNeighbors(td, direction) {
    const idValue = parseInt(td.id);
    const number_of_cells = Math.pow(BOARD_SIZE, 2);

    id_upNeighbor = idValue - BOARD_SIZE;
    id_downNeighbor = idValue + BOARD_SIZE;
    id_leftNeighbor = idValue - 1;
    id_rightNeighbor = idValue + 1;

    switch (direction) {
        case "topSelected":
            if (id_upNeighbor > 0) {
                upNeighbor = document.getElementById(id_upNeighbor.toString());
                disableUpNeighbor(upNeighbor);
                verify(upNeighbor);
            }
            break;
        case "downSelected":
            if (id_downNeighbor < number_of_cells) {
                downNeighbor = document.getElementById(id_downNeighbor.toString());
                disableDownNeighbor(downNeighbor);
                verify(downNeighbor);
            }
            break;
        case "leftSelected":
            if (!(id_leftNeighbor % BOARD_SIZE === 0)) {
                leftNeighbor = document.getElementById(id_leftNeighbor.toString());
                disableLeftNeighbor(leftNeighbor);
                verify(leftNeighbor);
            }
            break;

        case "rightSelected":
            firstCellOfNextRow = id_downNeighbor - (BOARD_SIZE - 1);
            if (!(idValue % BOARD_SIZE === 0)) {
                rightNeighbor = document.getElementById(id_rightNeighbor.toString());
                disableRightNeighbor(rightNeighbor);
                verify(rightNeighbor);
            }
            break;
    }
}

function disableUpNeighbor(neighbor) {
    neighbor.childNodes[7].classList.add("hidden");
    neighbor.classList.add("downSelected");
}

function disableDownNeighbor(neighbor) {
    neighbor.childNodes[1].classList.add("hidden");
    neighbor.classList.add("topSelected");
}

function disableRightNeighbor(neighbor) {
    neighbor.childNodes[3].classList.add("hidden");
    neighbor.classList.add("leftSelected");
}

function disableLeftNeighbor(neighbor) {
    neighbor.childNodes[5].classList.add("hidden");
    neighbor.classList.add("rightSelected");
}

function verifyIfGameEnded(){
    let scoreOfPlayer = "scoreOfPlayer";
    let total_score = 0;
    const number_of_cells = Math.pow(BOARD_SIZE, 2);
    for (let i = 0; i < PLAYERS.length; i++) {
        let element = document.getElementById(scoreOfPlayer+(i+1));
        let element_value = parseInt(element.innerHTML);
        total_score += element_value;
    }
    if(total_score === number_of_cells){
        return true;
    }else{
        return false;
    }
}

function showWinner(){
    const result = document.getElementById("score");
    const player1 = document.getElementById("scoreOfPlayer1");
    const player2 = document.getElementById("scoreOfPlayer2");
    if(parseInt(player1.innerHTML) > parseInt(player2.innerHTML)){
        result.innerHTML = "GANASTE! Jugador 1";
    } else {
        result.innerHTML = "GANASTE! Jugador 2";
    }
}

function verify(td) {
    let st = window.getComputedStyle(td).getPropertyValue('border-color');
    if (st === 'rgb(0, 0, 0)') {
        updateCurrentPlayerScore();
        td.innerHTML = "X";
        if(verifyIfGameEnded()){
            showWinner();
        }
    }
}

addId();
addIdToPlayers();
addIdToScores();

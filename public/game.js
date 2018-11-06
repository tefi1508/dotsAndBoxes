BOARD = document.getElementById("board");
BOARD_SIZE = BOARD.rows.length;
ROWS = BOARD.rows;
SCORE = document.getElementById("score");

function addId(){
    let idOfCell = 1;
    for (let index = 0; index < BOARD_SIZE; index++) {
        let cells = ROWS[index].cells;
        for (let index2 = 0; index2 < cells.length; index2++) {            
            cells[index2].id = idOfCell.toString();
            idOfCell=idOfCell+1;
        }
    }
}

function selectBorder(btn, direction) {
    td = btn.parentNode;
    td.classList.add(direction);
    verify(td);
    disableButton(btn);
    disableNeighbors(td, direction);
}

function disableButton(btn){
    btn.disabled = true;
}

function disableNeighbors(td, direction){
    const idValue = parseInt(td.id);
    const number_of_cells = Math.pow(BOARD_SIZE, 2);

    id_upNeighbor = idValue - BOARD_SIZE;
    id_downNeighbor = idValue + BOARD_SIZE;
    id_leftNeighbor = idValue - 1;
    id_rightNeighbor = idValue + 1;
    
    switch (direction) {
        case "topSelected":
            if(id_upNeighbor > 0 ){
                upNeighbor = document.getElementById(id_upNeighbor.toString());
                disableUpNeighbor(upNeighbor);
            }        
            break;
        case "downSelected":
            if(id_downNeighbor < number_of_cells){
                downNeighbor = document.getElementById(id_downNeighbor.toString());
                disableDownNeighbor(downNeighbor);
            }
            break;
        case "leftSelected":
            if(!(id_leftNeighbor%BOARD_SIZE === 0)){
                leftNeighbor = document.getElementById(id_leftNeighbor.toString());
                disableLeftNeighbor(leftNeighbor);
            }
            break;
        case "rightSelected":
            if(!(id_rightNeighbor != (id_downNeighbor - (BOARD_SIZE - 1)))){
                rightNeighbor = document.getElementById(id_rightNeighbor.toString());
                disableRightNeighbor(rightNeighbor);
            }
            break;
    }
}

function disableUpNeighbor(neighbor){
    neighbor.childNodes[7].disabled = true;
    neighbor.classList.add("downSelected");
}

function disableDownNeighbor(neighbor){
    neighbor.childNodes[1].disabled = true;
    neighbor.classList.add("topSelected");
}

function disableRightNeighbor(neighbor){
    neighbor.childNodes[3].disabled = true;
    neighbor.classList.add("leftSelected");
}

function disableLeftNeighbor(neighbor){
    neighbor.childNodes[5].disabled = true;
    neighbor.classList.add("rightSelected");
}

function verify(td) {
    let st = window.getComputedStyle(td).getPropertyValue('border-color');
    if (st === 'rgb(0, 0, 0)') {
        current_score = parseInt(SCORE.innerHTML);
        current_score += 1;
        SCORE.innerHTML = current_score.toString();
    } else {
        console.log('no');
    }
}

addId();
function changeColor(btn, style) {
    btn.classList.add(style);
    verify(btn);
}

function verify(td) {
    let st = window.getComputedStyle(td).getPropertyValue('border-color');

    if (st === 'rgb(0, 0, 0)') {
        console.log('punto');

    } else {
        console.log('no');
    }

}
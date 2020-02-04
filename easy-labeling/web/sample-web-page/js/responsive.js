function setLabelBackground(target) {
    document.getElementById('labelBackgroundButton').innerHTML = target.innerHTML;
    document.getElementById('labelExample').style.backgroundColor
        = target.title;
}

function setLabelBorderSize(target) {
    document.getElementById('labelBorderSizeButton').innerHTML = target.innerHTML;
    var borderStyle = document.getElementById('contentTextId').style.border;
    var borderArr = borderStyle.split(' ');
    var borderColor = borderArr[2] + borderArr[3] + borderArr[4];
    document.getElementById('contentTextId').style.border
        = target.title + ' solid ' + borderColor;
}

function setLabelBorderColor(target) {
    document.getElementById('labelBorderColorButton').innerHTML = target.innerHTML;
    var borderStyle = document.getElementById('contentTextId').style.border;
    var borderArr = borderStyle.split(' ');
    var borderSize = borderArr[0] + ' ' + borderArr[1];
    document.getElementById('contentTextId').style.border
        = borderSize + ' ' + target.title;
}

function setLabelBarSize(target) {
    document.getElementById('labelBarSizeButton').innerHTML = target.innerHTML;
    document.getElementById('label-bar').style.height = target.title;
}

function setLabelBarColor(target) {
    document.getElementById('labelBarColorButton').innerHTML = target.innerHTML;
    document.getElementById('label-bar').style.backgroundColor = target.title;
}

function headerTextChange(target) {
    document.getElementById('headerTextId').innerHTML
        = target.value;
}

function contentTextChange(target) {
    document.getElementById('contentTextId').innerHTML
        = target.value;
}

function tailTextChange(target) {
    document.getElementById('tailTextId').innerHTML
        = target.value;
}

function setHeaderTextFontFamily(target) {
    document.getElementById('headetTextFontFamilyButton').innerHTML =
        target.innerHTML;
    document.getElementById('headerTextId').style.fontFamily =
        target.title;
}

function setContentTextFontFamily(target) {
    document.getElementById('contenttTextFontFamilyButton').innerHTML =
        target.innerHTML;
    document.getElementById('contentTextId').style.fontFamily =
        target.title;
}

function setTailTextFontFamily(target) {
    document.getElementById('tailTextFontFamilyButton').innerHTML =
        target.innerHTML;
    document.getElementById('tailTextId').style.fontFamily =
        target.title;
}

function setHeaderTextFontSize(target) {
    document.getElementById('headerTextFontSizeButton').innerHTML =
        target.innerHTML;
    document.getElementById('headerTextId').style.fontSize =
        target.title;
}

function setContentTextFontSize(target) {
    document.getElementById('contentTextFontSizeButton').innerHTML =
        target.innerHTML;
    document.getElementById('contentTextId').style.fontSize =
        target.title;
}

function setTailTextFontSize(target) {
    document.getElementById('tailTextFontSizeButton').innerHTML =
        target.innerHTML;
    document.getElementById('tailTextId').style.fontSize =
        target.title;
}

function setHeaderTextFontColor(target) {
    document.getElementById('headerTextFontColorButton').innerHTML =
        target.innerHTML;
    document.getElementById('headerTextId').style.color =
        target.title;
}

function setContentTextFontColor(target) {
    document.getElementById('contentTextFontColorButton').innerHTML =
        target.innerHTML;
    document.getElementById('contentTextId').style.color =
        target.title;
}

function setTailTextFontColor(target) {
    document.getElementById('tailTextFontColorButton').innerHTML =
        target.innerHTML;
    document.getElementById('tailTextId').style.color =
        target.title;
}
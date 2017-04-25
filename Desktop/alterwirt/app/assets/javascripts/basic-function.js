var msg = 'Jazzabend am Sonntag';
function updateMessage() {
	var el = document.getElementById('message');
	el.textContent = msg;
}
document.write('<h1>' + msg + '</h1>');
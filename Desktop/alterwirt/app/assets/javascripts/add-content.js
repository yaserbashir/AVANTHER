var today = new Date();
var hourNow = today.getHours();
var greeting;

if (hourNow > 18) {
	greeting = 'Guten Abend!';
} else if (hourNow > 12) {
	greeting = 'Guten Nachtmittag!';
} else if (hourNow > 0) {
	greeting = 'Guten Morgen!';
} else {
	greeting = 'Willkommen!';
}

document.write('<h1>' + greeting + '</h1>')
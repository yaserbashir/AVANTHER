var hotel = {
	zimmer: 14,
	preis: 30,
	//hier noch eine if schleife, da 25 euro wenn mind 2 tage gebucht sind
	raumTypen: ['einzelbettzimmer', 'doppelbettzimmer', 'dreibettzimmer'],
	checkAvailability: function() {
		return this.zimmer - this.booked;
	}
};

var zeitRaum = new Date();
var heute = today.getDate();
var 
//var gast = noch nicht sicher was hier rein soll 

var datum;
var gebuchteTage = 4; //angenommen
var kostenZimmer;
var kaution = 20;

doppelzimmer = 100;


kostenZimmer = einzelzimmer * gebuchteTage;

var elHotel = document.getElementById('hotel');
elhotel.textContent = zimmer;

var elEinzelBettzimmer = document.getElementById('einzelzimmer');
elEinzelZimmer.textContent = einzelZimmer;

var elKosten = document.getElementById('kostenZimmer');
elKosten.textContent = kostenZimmer;


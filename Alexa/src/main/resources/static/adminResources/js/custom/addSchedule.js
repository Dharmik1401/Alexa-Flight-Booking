function hideRound() {

	document.getElementById('div1').style.display = 'none';
	document.getElementById('div2').style.display = 'none';
	document.getElementById('div3').style.display = 'none';

}
function showRound() {

	document.getElementById('div1').style.display = 'block';
	document.getElementById('div2').style.display = 'block';
	document.getElementById('div3').style.display = 'block';
}

function roundTripToCity() 
{
	var OneWayToCity = document.getElementById("OneWayToCity");
	var RoundTripFromCity = document.getElementById("newCityId");
	
	var OneWayFromCity = document.getElementById("OneWayFromCity");
	var RoundTripToCity = document.getElementById("RoundTripToCity");
	
	RoundTripFromCity.value = OneWayToCity.value;
	RoundTripToCity.value = OneWayFromCity.value;
}



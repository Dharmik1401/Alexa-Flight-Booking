function getCapacity() {

	const
	airplaneId = $('#airplaneTypeId').val();
	var htp = new XMLHttpRequest();

	var data = '';

	var title;

	htp.onreadystatechange = function() {

		if (htp.readyState == 4) {

			var jsn = JSON.parse(htp.responseText);

			$('#businessClass').val(jsn.businessClass);
			$('#economyClass').val(jsn.economyClass);
			$('#firstClass').val(jsn.firstClass);

			$('#totalCap').val(parseInt(jsn.firstClass) + parseInt(jsn.economyClass) + parseInt(jsn.businessClass));

		}
	}

	htp.open("get", "getCapacity?id=" + airplaneId, true);
	htp.send();
}
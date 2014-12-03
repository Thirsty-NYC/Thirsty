$(function(){
	$("#getHappy").click(function (){
		getHappy()
	})
	$("#findBar").click(function(){
		getBars()
	})
})

var getHappy = function getHappy(){
	$("#pageOne").fadeOut("slow", function(){
		console.log("inside of gethappy")
		$("#pageTwo").show()
	})
}

// gets bar and specials for single neighborhood
var getBars = function getBars(){
	var neighborhoodId = $("select")[0].value
	$.ajax({
		url: "/neighborhoods/" + neighborhoodId,
		success: function(data){
		// data[0] is array of bar objects in neighborhood, data[1] is an array of hashes with bar special deals 
			console.log(data)
			// function that makes neighborhood name
			// function that makes bar divs with specials
			for (var i = 0; i < data[0].length; i++){
				makeBarDiv(data[0][i], data[1][i])
			}
		}
	})
}

var makeBarDiv = function (bar, specials){
	console.log(specials)
	barSpecial = $.each(specials, function(key, value){
		console.log(key)
		console.log(value)
	})
	$("<div/>", {
    class: "bar",
    innerHTML: "<h1>"+ bar.name + "<h1>" + "<p>" + bar.location + ", "+ bar.phone_number+"</p>"

	})
}
// ;
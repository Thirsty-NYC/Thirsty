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

var getBars = function getBars(){
	var neighborhoodId = $("select")[0].value
	$.ajax({
		url: "/neighborhoods/" + neighborhoodId,
		success: function(data){
			for (var i = 0; i < data.length; i++){
				console.log(data)
			}
		}
	})
}
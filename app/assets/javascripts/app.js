$(function(){
	$("#getHappy").click(function (){
		getHappy()
	})
	$("#findBar").click(function(){
		getBars()
	})
})

function getHappy(){
	$("#pageOne").fadeOut("slow", function(){
		console.log("inside of gethappy")
		$("#pageTwo").show()
	})
}

function getBars(){
	var neighborhoodId = $("select")[0].value
	$.ajax({
		url: "/neighborhoods/" + neighborhoodId,
		success: function(data){
			console.log(data)
		}
	})
}
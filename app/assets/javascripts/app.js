$(function(){
	$("#getHappy").click(function (){
		getHappy()

	})
})

function getHappy(){
	$("#pageOne").fadeOut("slow", function(){
		console.log("inside of gethappy")
		$("#pageTwo").show()
	})

}
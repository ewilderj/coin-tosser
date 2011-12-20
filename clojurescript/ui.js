$(document).ready(function(){
    $("form").submit(function(){
	var tosses = parseInt($("#tosses").val());
	var runs = parseInt($("#runs").val());
	$("#results").text(chart(runs, tosses));
	return(false);
    });
});

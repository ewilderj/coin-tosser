var $j = jQuery.noConflict();
$j(document).ready(function(){
    $j("form").submit(function(){
	var tosses = parseInt($j("#tosses").val());
	var runs = parseInt($j("#runs").val());
	$j("#results").text(tosser.main.chart(runs, tosses));
	return(false);
    });
});

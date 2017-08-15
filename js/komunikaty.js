	function komunikat_ok(get_tresc){
		var tresc = get_tresc;
		
		$('html').css('visibility','visible');
		$('#komunikat.ok').fadeIn(100);
		$('#loading').fadeOut(100);
		$('#komunikat.ok').append('<center><p>'+tresc+'</p></center>');
		
	}

	function komunikat_error(get_tresc){
		var tresc = get_tresc;
		
		$('html').css('visibility','visible');
		$('#komunikat.error').fadeIn(100);
		$('#loading').fadeOut(100);
		$('#komunikat.error').append('<center><p>'+tresc+'</p></center>');

	}


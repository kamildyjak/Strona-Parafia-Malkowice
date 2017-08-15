$(function(){
	function to_top(){
		$("html, body").animate({
			scrollTop: 0
			}, 600);
	return false;
	}
	
	var data_1 = new Date();
	var tydzien = new Array (7);
		tydzien[0]="Niedziela";
		tydzien[1]="Poniedziałek";
		tydzien[2]="Wtorek";
		tydzien[3]="Środa";
		tydzien[4]="Czwartek";
		tydzien[5]="Piątek";
		tydzien[6]="Sobota";
	
	var miesiace = new Array(12);
		miesiace[0] = "styczeń";
		miesiace[1] = "luty";
		miesiace[2] = "marzec";
		miesiace[3] = "kwieceń";
		miesiace[4] = "maj";
		miesiace[5] = "czerwiec";
		miesiace[6] = "lipiec";
		miesiace[7] = "sierpień";
		miesiace[8] = "wrzesień";
		miesiace[9] = "październik";
		miesiace[10] = "listopad";
		miesiace[11] = "grudzien";
		
		$('.dzien_nazwa').text(tydzien[data_1.getDay()]);
		$('.pelna_data').text(data_1.getDate()+" "+miesiace[data_1.getMonth()]+" "+data_1.getFullYear());
		
		
	var msze_wysokosc = $("#msze").height();
		$("#rozwin_msze").css("display","none");
		msze_wysokosc_bez = $("#msze").height();
		$('#msze').css('height',msze_wysokosc_bez);
		
	$(".porzadek_mszy").click(function(){
		if($("#msze").height() == msze_wysokosc_bez){
			$("#msze").css("height",msze_wysokosc);
			$("#rozwin_msze").fadeIn(100);
		}else{
			$("#msze").css("height",msze_wysokosc_bez);
			$("#rozwin_msze").fadeOut(100);
		}
		
	});
	
	startTime();
	
	function startTime(){
		var data = new Date();
		var h = data.getHours();
		var m = data.getMinutes();
		var s = data.getSeconds();
		if(m<10){
			m="0"+m;
		}
		if(h<10){
			h="0"+h;
		}
		$(".aktualna").text(h+":"+m);
		}
	 
        setInterval(function(){startTime();},1000);  
	
	$("#menu_button article").bind('mouseover',function(){
		$(this).parent().children("li").css('visibility','visible');
	});
	
	$("#menu_button article").bind('mouseleave',function(){
		$(this).parent().children("li").css('visibility','hidden');
	});
	
	$("#menu_button li").bind('mouseover',function(){
		$(this).parent().children("li").css('visibility','visible');
		$(this).parent().css('background-position', '-147px 0px');
	});
	
	$("#menu_button li").bind('mouseleave',function(){
		$(this).parent().children("li").css('visibility','hidden');
		$(this).parent().css('background-position', '0px 0px');
	});
	
	$('#menu_button article').bind('mouseover', function(){
		$(this).parent().css('background-position','-147px 0');
	});
	
	$('#menu_button article').bind('mouseleave', function(){
		$(this).parent().css('background-position','0px 0px');
	});
	
	$('.wirtualny_spacer').click(function(){
		window.location = 'spacer/index.html';
	})
	
	$('.napis_parafia').click(function(){
		window.location = 'index.php';
	})
	
	$('.top_icon').click(function(){
		to_top();
	})
	

});


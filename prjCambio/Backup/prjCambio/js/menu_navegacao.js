// JavaScript Document
$(function(){
	//$('#menu').slideUp("fast");
		var AnimacaoSumir = "animated fadeOutRight";
		var AnimacaoAparecer ="animated fadeInRight";
		var fimAnimacao = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';		
		$('.abrir_dropdown').click(function()
		{					
			$('.menu_dropdown').addClass(AnimacaoAparecer).one(fimAnimacao, function(){
			    $(this).removeClass(AnimacaoAparecer);
			    $('.abrir_dropdown').addClass('sumir');			
			}).removeClass('sumir');

		});	
		$('.fechar_dropdown').click(function()
		{					
			$('.menu_dropdown').addClass(AnimacaoSumir).one(fimAnimacao, function(){
			    $(this).removeClass(AnimacaoSumir).addClass("sumir");
			    $('.abrir_dropdown').removeClass('sumir');			
			});
		});	
});

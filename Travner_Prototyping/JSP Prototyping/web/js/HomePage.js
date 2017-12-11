$(document).ready(function () {
    
	var formInputs = $('input[type="email"],input[type="username"],input[type="password"]');
	formInputs.focus(function() {
       $(this).parent().children('p.formLabel').addClass('formTop');
       $('div#formWrapper').addClass('darken-bg');
       $('div.logo').addClass('logo-active');
	});
    
	formInputs.focusout(function() {
		if ($.trim($(this).val()).length === 0){
		$(this).parent().children('p.formLabel').removeClass('formTop');
		}
		$('div#formWrapper').removeClass('darken-bg');
		$('div.logo').removeClass('logo-active');
	});
    
	$('p.formLabel').click(function() {
		 $(this).parent().children('.form-style').focus();
	});
    
    $('small').on('click', function(){
        $('.wrap, small').toggleClass('active');
  
        return false;
    });
    
    $('input.close').on('click', function(){
        $('.wrap, input.close').toggleClass('wrap active');
  
        return false;
    });
    
    
});
$('#cart').on('mouseenter', function(){
	$(this).find('i').removeClass('transparent');
});
$('#cart').on('mouseleave', function(){
	$(this).find('i').addClass('transparent');
});
$('.right').on('mouseenter', '.heart', function(){
	$(this).find('i').removeClass('transparent');
});
$('.right').on('mouseleave', '.heart', function(){
	$(this).find('i').addClass('transparent');
});
$('#signin').on('mouseenter', function(){
	$(this).find('i').removeClass('transparent');
});
$('#signin').on('mouseleave', function(){
	$(this).find('i').addClass('transparent');
});
$('.cogs').on('mouseenter', function(){
	$(this).find('i').removeClass('transparent');
	$(this).find('ul.cogs-dropdown-menu').slideToggle();
});
$('.cogs').on('mouseleave', function(){
	$(this).find('i').addClass('transparent');
	$(this).find('ul.cogs-dropdown-menu').slideToggle();
});
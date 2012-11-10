$(document).ready(function() {
	$('#mostrarCampo').click(function() {
		$('#mostrarCampo').hide();
		$('#td-email span').css('display', 'none');
		$('#td-email input').css('display', 'block');
		$('#alterar').show();
	});
});
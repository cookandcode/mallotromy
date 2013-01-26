# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(()->
	$('.btn-for-add').on('click',(e)->
		e.preventDefault()
		if $.trim($('.input-mail').val()) != '' && $('.input-mail').val().match(/^[\w.-]+@[\w]{2,}\.[a-z]{2,4}$/)
			form = new FormData()
			form.append('newsletter[mail]',$('.input-mail').val())

			xhr = new XMLHttpRequest()
			xhr.open('POST','/landing')
			xhr.send(form)

			xhr.onreadystatechange = ()->
				if xhr.DONE == xhr.readyState
					data = JSON.parse(xhr.responseText)
					if data['status'] == 'OK'
						$('.form-add-mail').slideUp(500)
						$('.title-success-message').slideDown(500)
						$('.success-message').slideDown(500)
					else
						check_input(data['message_error'])
		else
			check_input()
	)

	check_input = (message='')->
		$('.label-error').css('display','none')
		if message == ''
			if $.trim($('.input-mail').val()) == ''
				message = 'Veuillez renseigner votre email'
			else if !$('.input-mail').val().match(/^[\w.-]+@[\w]{2,}\.[a-z]{2,4}$/)
				message = 'Ce n\'est pas une adresse mail'
			else
				message = 'Une erreur s\'est produite'

		$('.label-error').text(message)
		$('.label-error').fadeIn(500)
)

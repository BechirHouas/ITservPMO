<%-- 
    Document   : login
    Created on : 10 août 2016, 16:19:50
    Author     : saif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/datepicker3.css" rel="stylesheet">
<link href="assets/css/styles.css" rel="stylesheet">

    </head>
    <body>
       <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
                    
                    
                        
                                
			<div class="login-panel panel panel-default" style=" position: relative; top: 50%; transform: translateY(50%);">
				<div class="panel-heading">Se connecter</div>
				<div class="panel-body">
					<form role="form" method="POST" action="/PMOITserv/login" commandnName="userform" id="formlogin">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Login/E-mail" name="email" type="text" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Mot de passe" name="password" type="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Se souvenir de moi
								</label>
							</div>
                                                    <button type="submit" form="formlogin" value="Login" class="btn btn-primary" style="background-color: #30a5ff; border-color: #30a5ff;">Login</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	
		

	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/chart.min.js"></script>
	<script src="assets/js/chart-data.js"></script>
	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
	<script src="assets/js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
    </body>
</html>

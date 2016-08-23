<%-- 
    Document   : list_comptes
    Created on : 26 juil. 2016, 10:01:49
    Author     : saif
--%>

<%@page import="com.pmo.pmoitserv.Model.Compte"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comptes</title>
         <script src="assets/js/jquery-3.1.0.js"></script>   
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/datepicker3.css" rel="stylesheet">
        <link href="assets/css/styles.css" rel="stylesheet">
        

<!--Icons-->
<script src="assets/js/lumino.glyphs.js"></script>
    </head>
    <body>
        
       <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>ITSERV</span>Admin</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Admin <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/PMOITserv/UserProfile"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profil</a></li>
							<li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Paramétres</a></li>
							<li><a href="/PMOITserv/Deconnect"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Déconnexion</a></li>
						</ul>
					</li>
				</ul>
                                
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Recherche">
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="index"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Tableau de bord</a></li>
			<li><a href="comptes"><svg class="glyph stroked monitor"><use xlink:href="#stroked-monitor"/></svg> Comptes</a></li>
                        <li><a href="utilisateurs"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg> Utilisateurs</a></li>
			<li><a href="tables.html"><svg class="glyph stroked clipboard-with-paper"><use xlink:href="#stroked-clipboard-with-paper"/></svg> Projets</a></li>
			
			
		<!--	<li class="parent ">
				<a href="#">
					<span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Dropdown 
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li>
						<a class="" href="#">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 1
						</a>
					</li>
					<li>
						<a class="" href="#">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 2
						</a>
					</li>
					<li>
						<a class="" href="#">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 3
						</a>
					</li>
				</ul>
			</li> -->
			<li role="presentation" class="divider"></li>
			<li><a href="login.html"><svg class="glyph stroked key"><use xlink:href="#stroked-key"></use></svg> Login Page</a></li>
                </ul>
            
            <div id="template-ref" class="container">
                <small><span>Template By</span><a target="_blank" href="http://medialoot.com/"> Medialoot</a></small>
            </div>

	</div><!--/.sidebar-->
        
        
         <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Comptes</li>
                                </ol>
		</div><!--/.row-->
                
                
                
         <!--       <div class="row">
                    <div class="col-lg-12">
				<h2>Comptes</h2>
			</div>
                </div>
                
                
                <hr style="width: 100%; color: #2aabd2; height: 1px; background-color: #d0e9c6;" />
                
                <div class="row" style="margin-top: 20px;" >
			
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading" style="background-color: #30a5ff; ">
                                            <div align="center">ITSERV</div>
					</div>
					<div class="panel-body" style="background-color:#dfdee3;">
                                            <div align="center"><a href="vuecompte.htm"><img class="img-circle" src="assets/img/logo-it-serv.jpg" width="140" height="140" alt="Card image cap"></a></div>
                                        </div>
                                    <div class="panel-footer" style="background-color:#30a5ff;">
                                        
                                    </div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading" style="background-color: #30a5ff; " >
                                            <div align="center">OOREDOO</div>
					</div>
					<div class="panel-body" style="background-color:#dfdee3;">
						 <div align="center"> <a href="vuecompte.htm"><img class="img-circle" src="assets/img/ooredoo-logo.jpg" width="140" height="140" alt="Card image cap"></a></div>					</div>
                                    <div class="panel-footer" style="background-color: #30a5ff; ">
                                        
                                    </div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading" style="background-color: #30a5ff; ">
                                            <div align="center">ABC.Co</div>
					</div>
					<div class="panel-body" style="background-color:#dfdee3;">
                                           <div align="center"> <a href="vuecompte.htm"><img class="img-circle" src="assets/img/abc-logo.png" width="140" height="140" alt="Card image cap"></a></div>
                                        </div>
                                    <div class="panel-footer" style="background-color: #30a5ff; ">
                                        
                                    </div>
				</div>
			</div>
			
		</div>
                
                <hr style="width: 100%; color: #2aabd2; height: 1px; background-color:#d0e9c6;" />
                
                <div class="row" style="margin-top: 20px; ">
			
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading" style="background-color: #30a5ff; ">
                                            <div align="center">HYDRO</div>
					</div>
					<div class="panel-body" style="background-color:#dfdee3;">
                                            <div align="center"><a href="vuecompte.htm"><img class="img-circle" src="assets/img/hydro-logo.png" width="140" height="140" alt="Card image cap"></a></div>
                                        </div>
                                    <div class="panel-footer" style="background-color: #30a5ff; ">
                                        
                                    </div>
				</div>
			</div>
			
			
			
			
		</div><!-- /.row --> 
                
		
         <br/>
         <br/>
                 <div class="row">
        <div class="col-xs-12  col-sm-6 col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading c-list">
                    <span class="title">Comptes</span>
                    <span class="pull-right" style="margin-right: -7px; font-size: 15px;"><button class="btn btn-info btn-sm" data-title="Edit" data-toggle="modal" data-target="#add" ><span class="glyphicon glyphicon-plus-sign"></span></button></span>
                </div>
                
                <div class="row" style="display: none;">
                    <div class="col-xs-12">
                        <div class="input-group c-search">
                            <input type="text" class="form-control" id="contact-list-search">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search text-muted"></span></button>
                            </span>
                        </div>
                    </div>
                </div>
                
                <div id="custom-search-input">
						<div class="input-group col-md-12">
							<input id="search" type="text" class="form-control input-lg" placeholder="Chercher" />
							<span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
						</div>
                
                <ul class="list-group" id="contact-list">
                                                
                    <c:forEach items="${comptes}" var="c" >
                   <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <a href="compte/${c.idCompte}">   <img src="${c.compteLogolien}" alt="LOGO" class="img-responsive img-circle" /></a>
                        </div>
                        <div class="col-xs-12 col-sm-3">
                            <span class="name">${c.compteNom}</span>
                           
                             
                            <span class="glyphicon glyphicon-map-marker text-muted c-info" data-toggle="tooltip" title="${c.compteAdresse}"></span>
                            <span class="visible-xs"> <span class="text-muted">${c.compteAdresse}</span><br/></span>
                            <span class="glyphicon glyphicon-earphone text-muted c-info" data-toggle="tooltip" title="${c.compteTel}"></span>
                            <span class="visible-xs"> <span class="text-muted">${c.compteTel}</span><br/></span>
                            <span class="glyphicon glyphicon-comment text-muted c-info" data-toggle="tooltip" title="${c.compteEmail}"></span>
                            <span class="visible-xs"> <span class="text-muted">${c.compteEmail}</span><br/></span>
                        </div>
                         <span class="pull-right" style="margin-right: -7px; font-size: 15px;"><button class="btn btn-danger btn-sm" data-title="Edit" data-toggle="modal" data-target="#delete" data-id="${c.idCompte}" id="del" ><span class="glyphicon glyphicon-minus-sign"></span></button></span>
                        <br/>
                        <br/>
                        <div class="col-xs-12 col-sm-6">
                            
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
                                                                
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    </c:forEach>
                    
                </ul>
            </div>
            </div>
        </div>
        
        </div>
              
                
         </div> <!-- main -->
         
         
              <!-- ModalCompte -->
  <div class="modal fade" id="add" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Ajout Compte</h3>
        </div>
           <form method="POST" action="ajouterCompte" role="form">
        <div class="modal-body">
                                                                         
           <div class="user-profile-content">
              <div class="form-group">
                <label for="Nom">Nom Compte</label>
                <input type="text" value="Nom" name="nom" id="Nom" class="form-control">
               </div>
              <div class="form-group">
                 <label for="Adresse">Adresse</label>
                 <input type="text" value="Adresse" name="adresse" id="Adresse" class="form-control">
              </div>
               <div class="form-group">
                 <label for="Tel">Tel</label>
                 <input type="tel" value="Tel" name="tel" id="Tel" class="form-control">
              </div>
               <div class="form-group">
                 <label for="Email">Email</label>
                 <input type="email" value="Email" name="email" id="Email" class="form-control">
              </div>
               <div class="form-group">
		<label>Url Logo</label>
		<input type="url" id="urllogo" name="url">
		
	       </div>
             </div>
        </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
            <button class="btn btn-info" type="submit">   Valider  </button>
        </div>
          </form>
      </div> <!-- Modal content-->
      
    </div>
  </div> <!-- MODAL Compte -->
  
   <!-- Modal Supression compte -->
  <div class="modal fade" id="delete" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Suppression Compte</h3>
        </div>
          
        <div class="modal-body">
           <br>
             <p>Êtes-vous sûr de vouloir supprimer définitivement ce compte ?
                 <br>
             </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
            
            <button class="btn btn-info" type="button" id="supp">   Valider  </button>
        </div>
         
      </div> <!-- Modal content-->
      
    </div>
  </div> <!-- MODAL Supression compte -->
        
  
  <script>
        var myCompteId;
        $(document).on("click", "#del", function () {
     myCompteId = $(this).data('id');
     
});
        
    document.getElementById("supp").onclick = function () {
        location.href = "deleteCompte/"+myCompteId;
    };
</script>
         
         <script>
             $(function(){
	$('#search').keyup(function(){	
		var current_query = $('#search').val().toLowerCase();
		if (current_query !== "") {
			$(".list-group li").hide();
			$(".list-group li").each(function(){
				var current_keyword = $(this).text().toLowerCase();
                                 
                                   if (current_keyword.indexOf(current_query) >=0) {
					$(this).show();    	 	
				};
			});    	
		} else {
			$(".list-group li").show();
		};
	});
});
         </script>
         
         
         <script>
             $(function () {
    /* BOOTSNIPP FULLSCREEN FIX */
    if (window.location == window.parent.location) {
        $('#back-to-bootsnipp').removeClass('hide');
    }
    
    
    $('[data-toggle="tooltip"]').tooltip();
    
    $('#fullscreen').on('click', function(event) {
        event.preventDefault();
        window.parent.location = "http://bootsnipp.com/iframe/4l0k2";
    });
    $('a[href="#cant-do-all-the-work-for-you"]').on('click', function(event) {
        event.preventDefault();
        $('#cant-do-all-the-work-for-you').modal('show');
    })
    
    $('[data-command="toggle-search"]').on('click', function(event) {
        event.preventDefault();
        $(this).toggleClass('hide-search');
        
        if ($(this).hasClass('hide-search')) {        
            $('.c-search').closest('.row').slideUp(100);
        }else{   
            $('.c-search').closest('.row').slideDown(100);
        }
    })
    
    $('#contact-list').searchable({
        searchField: '#contact-list-search',
        selector: 'li',
        childSelector: '.col-xs-12',
        show: function( elem ) {
            elem.slideDown(100);
        },
        hide: function( elem ) {
            elem.slideUp( 100 );
        }
    })
});

         </script>
          <script src="https://cdn.jsdelivr.net/holder/2.9.0/holder.min.js"></script>
         <script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/chart.min.js"></script>
	<script src="assets/js/chart-data.js"></script>
	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
	<script src="assets/js/bootstrap-datepicker.js"></script>
    </body>
</html>

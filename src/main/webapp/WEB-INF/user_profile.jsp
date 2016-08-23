<%-- 
    Document   : user_profile
    Created on : 21 août 2016, 10:06:07
    Author     : saif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profil Utilisateur</title>
         <script src="/PMOITserv/assets/js/jquery-3.1.0.js"></script>   
        <link href="/PMOITserv/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="/PMOITserv/assets/css/datepicker3.css" rel="stylesheet">
        <link href="/PMOITserv/assets/css/styles.css" rel="stylesheet">
        <link href="/PMOITserv/assets/css/font-awesome.css" rel="stylesheet">
        
        <script src="/PMOITserv/assets/js/lumino.glyphs.js"></script>
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
	</nav> <!-- navbar -->
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Recherche">
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="index_admin.html"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Tableau de bord</a></li>
			<li><a href="/PMOITserv/comptes"><svg class="glyph stroked monitor"><use xlink:href="#stroked-monitor"/></svg> Comptes</a></li>
                        <li><a href="/PMOITserv/utilisateurs"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg> Utilisateurs</a></li>
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
				<li class="active">Profil Utilisateur</li>
                                                   

			</ol>
		</div><!--/.row-->
                
                <br>
           

	<div class="row">
		<div class="col-lg-12" >
			 <h2>Profil Utilisateur</h2>
                        </div>
        </div>
            
                
                <div class="row">
              <div class="col-sm-3">
                <div class="panel widget light-widget panel-bd-top">
                  <!--<div class="panel-heading no-title"> </div>-->
                  <div class="panel-body">
                    
                    <h2 class="font-semibold mgbt-xs-5">${user.utilisateurNom}  ${user.utilisateurPrenom}</h2>
                   
                    <div class="row" >
                      <table class="table table-striped table-hover table-responsive">
                        <tbody>
                          <tr>
                            <td style="width:60%;">Status</td>
                          </tr>
                          <tr>
                              
                           <td>
                                <c:choose>
                                        <c:when test="${user.utilisateurEtat eq 1}">
                                          <span class="label label-success">active</span>
                                        </c:when>    
                                        <c:otherwise>
                                         <span class="label label-default">inactive</span>
                                         </c:otherwise>
                                        </c:choose>
                               
                           </td>  
                          
                          </tr>
                          
                         </tbody>
                      </table>
                    </div>
                    
                  </div>
                </div>
                <!-- panel widget -->
                
                
              </div>
              <div class="col-sm-9">
                <div class="tabs widget">
  <ul class="nav nav-tabs widget">
    <li class="active"> <a data-toggle="tab" href="#profile-tab"> Profil <span class="menu-active"></span> </a></li>
    <li class=""> <a data-toggle="tab" href="#projects-tab"> Activité <span class="menu-active"></span> </a></li>    
     </ul>
  <div class="tab-content">
    <div id="profile-tab" class="tab-pane active">
      <div class="pd-20">
         <h3 class="mgbt-xs-15 mgtp-10 font-semibold"><i class="icon-user mgr-10 profile-icon"></i> ABOUT</h3>
        <div class="row">
          <div class="col-sm-6">
            <div class="row mgbt-xs-0">
              <label class="col-xs-5 control-label">Prenom :</label>
              <div class="col-xs-7 controls">${user.utilisateurPrenom}</div>
              <!-- col-sm-10 --> 
            </div>
          </div>
          <div class="col-sm-6">
            <div class="row mgbt-xs-0">
              <label class="col-xs-5 control-label">Nom :</label>
              <div class="col-xs-7 controls">${user.utilisateurNom}</div>
              <!-- col-sm-10 --> 
            </div>
          </div>
          <div class="col-sm-6">
            <div class="row mgbt-xs-0">
              <label class="col-xs-5 control-label">Login :</label>
              <div class="col-xs-7 controls">${user.utilisateurLogin}</div>
              <!-- col-sm-10 --> 
            </div>
          </div>
          <div class="col-sm-6">
            <div class="row mgbt-xs-0">
              <label class="col-xs-5 control-label">Email :</label>
              <div class="col-xs-7 controls">${user.utilisateurEmail}</div>
              <!-- col-sm-10 --> 
            </div>
          </div>
          <div class="col-sm-6">
            <div class="row mgbt-xs-0">
              <label class="col-xs-5 control-label">N° Tel :</label>
              <div class="col-xs-7 controls">${user.utilisateurTel}</div>
              <!-- col-sm-10 --> 
            </div>
          </div>
              <div class="col-sm-6">
            <div class="row mgbt-xs-0">
              <label class="col-xs-5 control-label">Adhésion :</label>
              <div class="col-xs-7 controls"><c:forEach var="item" items="${user.comptes}">
		                              ${item.compteNom} 
                                           </c:forEach>
              </div>
              <!-- col-sm-10 --> 
            </div>
          </div>
        </div>
         <br>
         <div class="row">
             <div class="vd_info tr pull-right"> <button data-title="Edit" data-toggle="modal" data-target="#edit" data-id="${user.idUtilisateur}" id="updte" > <i class="fa fa-pencil append-icon"></i> Edit </button></div>      
         </div>
       
      </div>
      <!-- pd-20 --> 
    </div>
    <!-- home-tab -->
    
    <div id="projects-tab" class="tab-pane">
    	<div class="pd-20">
       <div class="row">
          <div class="col-sm-6">
            <h3 class="mgbt-xs-15 font-semibold"><i class="fa fa-tasks mgr-10 profile-icon"></i> Actions</h3>
            <div class="">
              <div class="content-list">
                <div data-rel="scroll" class="mCustomScrollbar _mCS_6" style="overflow: hidden;"><div class="mCustomScrollBox mCS-light" id="mCSB_6" style="position: relative; height: 100%; overflow: hidden; max-width: 100%; max-height: 400px;"><div class="mCSB_container" style="position: relative; top: 0px;">
                  <ul class="list-wrapper">
                      <c:forEach items="${user.actions}" var="a">
                          <li> <span class="menu-text"> ${a.actionTitre} <span style="display:inline-block; width: 30px;"></span>  ${a.actionCreationDte} ~ ${a.actionClotureRealDte}  </li>
                      </c:forEach>
                      </ul>
                </div><div class="mCSB_scrollTools" style="position: absolute; display: block; opacity: 0;"><div class="mCSB_draggerContainer"><div class="mCSB_dragger" style="position: absolute; top: 0px; height: 352px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="position: relative; line-height: 352px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                
              </div>
            </div>
          </div>
          <div class="col-sm-6">
            <h3 class="mgbt-xs-15 font-semibold"><i class="fa fa-question-circle mgr-10 profile-icon"></i> Demandes</h3>
            <div class="">
              <div class="content-list">
                <div data-rel="scroll" class="mCustomScrollbar _mCS_6" style="overflow: hidden;"><div class="mCustomScrollBox mCS-light" id="mCSB_6" style="position: relative; height: 100%; overflow: hidden; max-width: 100%; max-height: 400px;"><div class="mCSB_container" style="position: relative; top: 0px;">
                  <ul class="list-wrapper">
                   <c:forEach items="${user.demandes}" var="d">
                    <li> <span class="menu-text"> ${d.demandeLabel}  <span style="display:inline-block; width: 30px;"></span>  ${d.demandeDte}  </li>
                      </c:forEach> 
                  </ul>
                </div><div class="mCSB_scrollTools" style="position: absolute; display: block; opacity: 0;"><div class="mCSB_draggerContainer"><div class="mCSB_dragger" style="position: absolute; top: 0px; height: 352px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="position: relative; line-height: 352px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                
              </div>
            </div>
          </div>
                    
              
        </div>
    </div>
    
    
    
    
    
  </div>
  <!-- tab-content --> 
</div>
<!-- tabs-widget -->              </div>
            </div>
            
        </div>
        </div>
              
  
    <!-- ModalEditUser -->
  <div class="modal fade" id="edit" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Modification Utilisateur</h3>
        </div>
           <form method="POST" action="ModifUserProfil" role="form">
        <div class="modal-body">
                                                                         
           <div class="user-profile-content">
              <input type="hidden" name="iduser" id="userId" value="104" /> 
              <div class="form-group">
                <label for="Nom">Nom</label>
                <input type="text" value="Nom" name="nom" id="editNom" class="form-control" disabled>
               </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editNomact"> Basculer
		</label>
	      </div>
               <div class="form-group">
                <label for="Prenom">Prenom</label>
                <input type="text" value="Prenom" name="prenom" id="editPrenom" class="form-control" disabled>
               </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editPrenomact"> Basculer
		</label>
	      </div>
              <div class="form-group">
                 <label for="Login">Login</label>
                 <input type="text" value="Login" name="login" id="editLogin" class="form-control" disabled>
              </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editLoginact"> Basculer
		</label>
	      </div>
              
               <div class="form-group">
                 <label for="Tel">Tel</label>
                 <input type="tel" value="Tel" name="tel" id="editTel" class="form-control" disabled>
              </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editTelact"> Basculer
		</label>
	      </div> 
               <div class="form-group">
                 <label for="Email">Email</label>
                 <input type="email" value="Email" name="email" id="editEmail" class="form-control" disabled>
              </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editEmailact"> Basculer
		</label>
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
  </div> <!-- MODAL Edit User -->
  
  
  <script>
   
   $(document).on("click", "#updte", function () {
     $("#userId").val($(this).data('id'));
     
});
     
    document.getElementById('editNomact').onchange = function() {
    document.getElementById('editNom').disabled = !this.checked;
};

document.getElementById('editPrenomact').onchange = function() {
    document.getElementById('editPrenom').disabled = !this.checked;
};

document.getElementById('editLoginact').onchange = function() {
    document.getElementById('editLogin').disabled = !this.checked;
};


document.getElementById('editTelact').onchange = function() {
    document.getElementById('editTel').disabled = !this.checked;
};

document.getElementById('editEmailact').onchange = function() {
    document.getElementById('editEmail').disabled = !this.checked;
};

</script>
        
        
        <script src="https://cdn.jsdelivr.net/holder/2.9.0/holder.min.js"></script>
         <script src="/PMOITserv/assets/js/jquery-1.11.1.min.js"></script>
	<script src="/PMOITserv/assets/js/bootstrap.min.js"></script>
	<script src="/PMOITserv/assets/js/chart.min.js"></script>
	<script src="/PMOITserv/assets/js/chart-data.js"></script>
	<script src="/PMOITserv/assets/js/easypiechart.js"></script>
	<script src="/PMOITserv/assets/js/easypiechart-data.js"></script>
	<script src="/PMOITserv/assets/js/bootstrap-datepicker.js"></script>
    </body>
</html>

<%-- 
    Document   : list_users
    Created on : 17 août 2016, 12:04:36
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
        <title>Utilisateurs</title>
         <script src="assets/js/jquery-3.1.0.js"></script>   
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/datepicker3.css" rel="stylesheet">
        <link href="assets/css/styles.css" rel="stylesheet">
        <script src="assets/js/lumino.glyphs.js"></script>
         <link href="assets/css/font-awesome.css" rel="stylesheet">
        <style>
            body{
    background:#eee;    
}
.main-box.no-header {
    padding-top: 20px;
}
.main-box {
    background: #FFFFFF;
    -webkit-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -moz-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -o-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -ms-box-shadow: 1px 1px 2px 0 #CCCCCC;
    box-shadow: 1px 1px 2px 0 #CCCCCC;
    margin-bottom: 16px;
    -webikt-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}
.table a.table-link.danger {
    color: #e74c3c;
}
.label {
    border-radius: 3px;
    font-size: 0.875em;
    font-weight: 600;
}
.user-list tbody td .user-subhead {
    font-size: 0.875em;
    font-style: italic;
}
.user-list tbody td .user-link {
    display: block;
    font-size: 1.25em;
    padding-top: 3px;
    margin-left: 60px;
}
a {
    color: #3498db;
    outline: none!important;
}
.user-list tbody td>img {
    position: relative;
    max-width: 50px;
    float: left;
    margin-right: 15px;
}

.table thead tr th {
    text-transform: uppercase;
    font-size: 0.875em;
}
.table thead tr th {
    border-bottom: 2px solid #e7ebee;
}
.table tbody tr td:first-child {
    font-size: 1.125em;
    font-weight: 300;
}
.table tbody tr td {
    font-size: 0.875em;
    vertical-align: middle;
    border-top: 1px solid #e7ebee;
    padding: 12px 8px;
}
        </style>
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
							<li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profil</a></li>
							<li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Paramétres</a></li>
							<li><a href="#"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Déconnexion</a></li>
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
                        <li><a href="Utilisateurs"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg> Utilisateurs</a></li>
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
				<li class="active">Utilisateurs</li>
                                </ol>
		</div><!--/.row-->
                  <br/>
         <div class="row">
		<div class="col-lg-12" >
			 <h2>Utilisateurs</h2>
                             <span class="pull-right" style="margin-top: -50px; font-size: 15px;"><button class="btn btn-info btn-sm" data-title="Edit" data-toggle="modal" data-target="#add" ><span class="fa fa-plus-circle fa-lg"> Ajouter Utilisateur</span></button></span>
                                                            
		  </div>
							
							
	</div>
<div class="row">
    <div class="col-lg-12"
<div class="container bootstrap snippet">
    
         <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                                <tr>
                                <th><span>Utilisateur</span></th>
                                <th><span>Email</span></th>
                                <th><span>Tel</span></th>
                                <th><span>Status</span></th>
                                <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${users}" var="u" >
                                <tr>
                                    <td>
                                        <img src="assets/img/user-logo.jpg" alt="">
                                        <div class="user-link">${u.utilisateurNom} ${u.utilisateurPrenom}</div>
                                        <span class="user-subhead">${u['class'].simpleName}</span>
                                    </td>
                                    <td> ${u.utilisateurEmail} </td>
                                    <td> ${u.utilisateurTel} </td>
                                    <td>
                                        
                                        <c:choose>
                                        <c:when test="${u.utilisateurEtat eq 1}">
                                          <span class="label label-info">active</span>
                                        </c:when>    
                                        <c:otherwise>
                                         <span class="label label-default">inactive</span>
                                         </c:otherwise>
                                        </c:choose>
                                   </td>
                                    
                                    <td style="width: 20%;">
                                        <button class="btn btn-info btn-sm" data-title="Edit" data-toggle="modal" data-target="#edit" data-id="${u.idUtilisateur}" id="updte"><span class="fa fa-cog"></span></button>
                                        <button class="btn btn-warning btn-sm" data-title="Edit" data-toggle="modal" data-target="#desactiv" data-id="${u.idUtilisateur}" id="des" ><span class="fa fa-ban"></span></button>
                                        <button class="btn btn-danger btn-sm" data-title="Edit" data-toggle="modal" data-target="#delete" data-id="${u.idUtilisateur}" id="del" ><span class="fa fa-trash-o fa-lg"></span></button>
                                        
                                    </td>
                                </tr>
                                </c:forEach>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
      
    </div>

</div>
                
</div> <!-- main div -->

    <!-- ModalUser -->
  <div class="modal fade" id="add" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Ajout Utilisateur</h3>
        </div>
           <form method="POST" action="ajouterUser" role="form">
        <div class="modal-body">
                                                                         
           <div class="user-profile-content">
              <div class="form-group">
                <label for="Nom">Nom</label>
                <input type="text" value="Nom" name="nom" id="Nom" class="form-control">
               </div>
               <div class="form-group">
                <label for="Prenom">Prenom</label>
                <input type="text" value="Prenom" name="prenom" id="Prenom" class="form-control">
               </div>
              <div class="form-group">
                 <label for="Login">Login</label>
                 <input type="text" value="Login" name="login" id="Login" class="form-control">
              </div>
               <div class="form-group">
                 <label for="Password">Mot de passe</label>
                 <input type="password" value="Mot de passe" name="password" id="Password" class="form-control">
              </div>
               <div class="form-group">
              <label for="inputNomMatiere">Rôle</label>
        
               <select class="form-control "  id="Role" type="text" name="role">
                  <option value="ordinaire" selected="selected">Ordinaire</option>
                  <option value="admin">Admin</option>
                  <option value="consultant">Consultant</option>
                  <option value="etranger">Etranger</option>
                  <option value="intervenant">Intervenant</option>
              </select>
      
             </div>
               <div class="form-group">
                 <label for="Tel">Tel</label>
                 <input type="tel" value="Tel" name="tel" id="Tel" class="form-control">
              </div>
               <div class="form-group">
                 <label for="Email">Email</label>
                 <input type="email" value="Email" name="email" id="Email" class="form-control">
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
  </div> <!-- MODAL User -->
  
  
    <!-- ModalEditUser -->
  <div class="modal fade" id="edit" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Modification Utilisateur</h3>
        </div>
           <form method="POST" action="ModifUser" role="form">
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
  
  
     <!-- Modal Supression user -->
  <div class="modal fade" id="delete" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Suppression Utilisateur</h3>
        </div>
          
        <div class="modal-body">
           <br>
             <p>Êtes-vous sûr de vouloir supprimer définitivement cet utilisateur ?
                 <br>
             </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
            
            <button class="btn btn-info" type="button" id="supp">   Valider  </button>
        </div>
         
      </div> <!-- Modal content-->
      
    </div>
  </div> <!-- MODAL Supression user -->
  
     <!-- Modal Desactivation user -->
  <div class="modal fade" id="desactiv" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Etat Utilisateur</h3>
        </div>
          
        <div class="modal-body">
           <br>
             <p>Êtes-vous sûr de vouloir basculer l'état de cet utilisateur ?
                 <br>
             </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
            
            <button class="btn btn-info" type="button" id="desac">   Valider  </button>
        </div>
         
      </div> <!-- Modal content-->
      
    </div>
  </div> <!-- MODAL Supression compte -->
         
         
 <script>
        var myuserId;
        $(document).on("click", "#del", function () {
     myuserId = $(this).data('id');
     
});

$(document).on("click", "#des", function () {
     myuserId = $(this).data('id');
     
});
        
    document.getElementById("supp").onclick = function () {
        location.href = "deleteUser/"+myuserId;
    };
    
    document.getElementById("desac").onclick = function () {
        location.href = "ToggleUser/"+myuserId;
    };
</script>

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
         <script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/chart.min.js"></script>
	<script src="assets/js/chart-data.js"></script>
	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
	<script src="assets/js/bootstrap-datepicker.js"></script>
    </body>
</html>

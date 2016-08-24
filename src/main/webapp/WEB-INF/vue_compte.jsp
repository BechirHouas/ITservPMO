<%-- 
    Document   : vue_projet
    Created on : 28 juil. 2016, 12:39:02
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
        <title>Vue Compte</title>
        <script src="../assets/js/jquery-3.1.0.js"></script>   
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/css/datepicker3.css" rel="stylesheet">
        <link href="../assets/css/styles.css" rel="stylesheet">
        <link href="../assets/css/font-awesome.css" rel="stylesheet">
         <link rel="shortcut icon" href="../assets/img/logo-it-serv.jpg">
        
        <script src="../assets/js/lumino.glyphs.js"></script>
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
			<!--<li><a href="tables.html"><svg class="glyph stroked clipboard-with-paper"><use xlink:href="#stroked-clipboard-with-paper"/></svg> Projets</a></li>
			-->
			
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
			<!--<li><a href="login.html"><svg class="glyph stroked key"><use xlink:href="#stroked-key"></use></svg> Login Page</a></li>
                       -->             
   </ul>
            
            <div id="template-ref" class="container">
                <small><span>Template By</span><a target="_blank" href="http://medialoot.com/"> Medialoot</a></small>
            </div>

	</div><!--/.sidebar-->
        
    
    
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">	
        
        <div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Vue Compte</li>
                                                   

			</ol>
		</div><!--/.row-->
                
                <br>

  <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <div class="col-md-12 lead">Profil Compte<hr></div>
          </div>
          <div class="row">
			<div class="col-md-4 text-center">
              <img class="img-circle img-responsive avatar avatar-original" style="-webkit-user-select:none; 
              display:block; margin:auto;" src="${compte.compteLogolien}">
            </div>
            <div class="col-md-8">
              <div class="row">
                <div class="col-md-12">
                  <h1 class="only-bottom-margin">${compte.compteNom} </h1>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <span class="text-muted">Adresse:</span> ${compte.compteAdresse}<br>
                  <span class="text-muted">Email:</span> ${compte.compteEmail}<br>
                  <span class="text-muted">Tel:</span> ${compte.compteTel}<br><br>
                 <!-- <small class="text-muted">xxxxxxxxxxxxxxxxx</small>-->
                </div>
                <div class="col-md-6">
                    <div>
                    <a target="_blank" href="${compte.compteFblien}" class="btn btn-social-icon btn-facebook" ><span class="fa fa-facebook"></span></a>
                    </div>
                    <div>
                    <a target="_blank" href="${compte.compteInlien}" class="btn btn-social-icon btn-linkedin" ><span class="fa fa-linkedin"></span></a>
                    </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <hr><button class="btn btn-default pull-right" data-toggle="modal" data-target="#editCompte" data-id="${compte.idCompte}" id="updatecompt"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

                
                <div class="row">
			<div class="col-xs-12 col-md-4 col-lg-4">
				<div class="panel panel-blue panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked table"><use xlink:href="#stroked-table"/></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">${projetnbr}</div>
							<div class="text-muted">Projets en cours</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4 col-lg-4">
				<div class="panel panel-orange panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<i class="fa fa-exclamation-circle fa-4x" aria-hidden="true"></i>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">${actionnbr}</div>
							<div class="text-muted">Actions en cours</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4 col-lg-4">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">${usernbr}</div>
							<div class="text-muted">Utilisateurs</div>
						</div>
					</div>
				</div>
			</div>
		
		</div><!--/.row-->
                
                <div class="row">
                    <div class="container col-lg-12">
                   <div class="panel panel-blue">
					<div class="panel-heading dark-overlay"><svg class="glyph stroked clipboard-with-paper"><use xlink:href="#stroked-clipboard-with-paper"></use></svg>Projects en cours</div>
					<div class="panel-body" style="min-height: 400px; max-height: 400px;overflow-y: scroll; background-color: #FFF;">
						<ul class="todo-list">
                                                  <c:forEach items="${projets}" var="c" >
                                                    <li class="todo-list-item">
                                                 <div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
                                                                        <a href="/PMOITserv/projet/${c.idProjet}"><label for="checkbox"> ${c.projetLabel}  </label> <label for="checkbox" style="padding-left: 100px">  ${c.projetConcept} </label></a>
                                                                        
								</div>
                                                               
								<div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet" data-id="${c.idProjet}" id="updte"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp" data-id="${c.idProjet}" id="del"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
                                                        </li> 
                                                  </c:forEach>
                                                  
						</ul>
					</div>
					<div class="panel-footer">
						<span>
						<button class="btn btn-primary btn-block" id="btn-ajout" data-toggle="modal" data-target="#ModalAjout" style="background-color:#30a5ff; border-color: #30a5ff;">Ajouter</button>
							</span>
					</div>
				</div>
                          </div>
                </div>
             
                <div class="row">
                    
                </div>
                <br>
                <br>
        
        
        
    </div> <!-- main -->
        
     <!-- ModalProjet -->
  <div class="modal fade" id="ModalProjet" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Paramètres Projet</h3>
        </div>
          <form role="form" action="/PMOITserv/ModifProjet" method="POST">
        <div class="modal-body">
                                                                         
           <div class="user-profile-content">
             <input type="hidden" name="idcompte" value="${compte.idCompte}" />        
             <input type="hidden" name="idprojet" id="projetId" value="104" />  
            <div class="form-group">
              <label for="Label">Label Projet</label>
              <input type="text" placeholder="Label" id="editLabel" name="label" class="form-control" disabled>
            </div>
            <div class="checkbox">
                <label>
		 <input type="checkbox" id="editLabelact"> Basculer
		</label>
	     </div>
            <div class="form-group">
              <label for="Statut">Statut</label>
               <select type="text" id="editStatut" name="statut" class="form-control" disabled>
                  <option value="En cours" selected="selected">En cours</option>
                   <option value="Standby">StandBy</option>
                  <option value="Cloture">Cloturé</option>
                  
               </select>
             </div>
             <div class="checkbox">
                <label>
		 <input type="checkbox" id="editStatutact"> Basculer
		</label>
	     </div>  
             <div class="form-group">
               <label for="DateClot">Date Cloture</label>
                <input type="date"  id="editDateClot" name="dateclot" class="form-control" disabled>
             </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editDateClotact"> Basculer
		</label>
	     </div> 
             <div class="form-group">
               <label for="Descrp">Description</label>
               <textarea style="height: 125px;" id="editDescrp" name="concep" class="form-control" disabled>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh.</textarea>
              </div>
               <div class="checkbox">
                <label>
		 <input type="checkbox" id="editDescrpact"> Basculer
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
  </div> <!-- MODAL PROJET -->
        
  <!-- ModalAjoutProjet -->
  <div class="modal fade" id="ModalAjout" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Nouveau Projet</h3>
        </div>
           <form role="form" method="POST" action="/PMOITserv/ajouterProjet" >
        <div class="modal-body">
                                              
           <div class="user-profile-content">
            <input type="hidden" name="idcompte" value="${compte.idCompte}" />                          
            <div class="form-group">
              <label for="Label">Label Projet</label>
                <input type="text" placeholder="Label" id="Label" name="label" class="form-control">
            </div>
            <div class="form-group">
              <label for="Statut">Statut</label>
               <select type="text" id="Statut" name="statut" class="form-control">
                   <option value="En cours" selected="selected">En cours</option>
                   <option value="Standby">StandBy</option>
                  <option value="Cloture">Cloturé</option>
               </select>
             </div>
             <div class="form-group">
               <label for="DateDeb">Date Debut</label>
                <input type="date"  id="DateDeb" name="datedeb" class="form-control">
             </div>
             <div class="form-group">
               <label for="Descrp">Description</label>
               <textarea style="height: 125px;" id="Descrp" name="concep" class="form-control">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh.</textarea>
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
  </div> <!-- MODALAjoutProjet -->
        
        
       <!-- ModalCompte -->
  <div class="modal fade" id="editCompte" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Paramétres Compte</h3>
        </div>
          <form method="POST" action="/PMOITserv/ModifCompte" role="form">
        <div class="modal-body">
                                                                         
           <div class="user-profile-content">
              <input type="hidden" name="idcompte" id="CompteId" value="104" /> 
              <div class="form-group">
                <label for="Nom">Nom Compte</label>
                <input type="text" placeholder="Nom" name="nom" id="editNom" class="form-control" disabled>
               </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editNomact"> Basculer
		</label>
	      </div>
               <div class="form-group">
                <label for="Prenom">Adresse</label>
                <input type="text" placeholder="Adresse" name="adresse" id="editAdresse" class="form-control" disabled>
               </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editAdresseact"> Basculer
		</label>
	      </div>
              <div class="form-group">
                 <label for="Login">Email</label>
                 <input type="text" placeholder="Email" name="email" id="editEmail" class="form-control" disabled>
              </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editEmailact"> Basculer
		</label>
	      </div>
              
               <div class="form-group">
                 <label for="Tel">Tel</label>
                 <input type="tel" placeholder="Tel" name="tel" id="editTel" class="form-control" disabled>
              </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editTelact"> Basculer
		</label>
	      </div> 
              <div class="form-group">
                 <label for="Email">Page Facebook</label>
                 <input type="url"  name="urlfb" id="editUrlfb" class="form-control" disabled>
              </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editUrlfbact"> Basculer
		</label>
	      </div> 
              <div class="form-group">
                 <label for="Email">Page Linkedin</label>
                 <input type="url"  name="urlin" id="editUrlin" class="form-control" disabled>
              </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editUrlinact"> Basculer
		</label>
	      </div> 
               <div class="form-group">
                 <label for="Email">Url Logo</label>
                 <input type="url"  name="url" id="editUrl" class="form-control" disabled>
              </div>
              <div class="checkbox">
                <label>
		 <input type="checkbox" id="editUrlact"> Basculer
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
  </div> <!-- MODAL Compte -->
        
   <!-- Modal Supression projet -->
  <div class="modal fade" id="ModalSupp" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Suppression Projet</h3>
        </div>
          
        <div class="modal-body">
           <br>
             <p>Êtes-vous sûr de vouloir supprimer définitivement ce projet ?
                 <br>
             </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
            
            <button class="btn btn-info" id="supp" type="button">   Valider  </button>
        </div>
         
      </div> <!-- Modal content-->
      
    </div>
  </div> <!-- MODAL Supression projet -->
  

  <script>
      
         var myprojetId;
        $(document).on("click", "#del", function () {
     myprojetId = $(this).data('id');
     
});

 $(document).on("click", "#updte", function () {
     $("#projetId").val($(this).data('id'));
     
});

        
    document.getElementById("supp").onclick = function () {
        location.href = "/PMOITserv/deleteProjet/"+${compte.idCompte}+"/"+myprojetId;
    };
    
    
  </script>
<script>
   
   $(document).on("click", "#updatecompt", function () {
     $("#CompteId").val($(this).data('id'));
     
});
     
       
    document.getElementById('editNomact').onchange = function() {
    document.getElementById('editNom').disabled = !this.checked;
};

document.getElementById('editAdresseact').onchange = function() {
    document.getElementById('editAdresse').disabled = !this.checked;
};

document.getElementById('editEmailact').onchange = function() {
    document.getElementById('editEmail').disabled = !this.checked;
};


document.getElementById('editTelact').onchange = function() {
    document.getElementById('editTel').disabled = !this.checked;
};

document.getElementById('editUrlact').onchange = function() {
    document.getElementById('editUrl').disabled = !this.checked;
};
document.getElementById('editUrlfbact').onchange = function() {
    document.getElementById('editUrlfb').disabled = !this.checked;
};
document.getElementById('editUrlinact').onchange = function() {
    document.getElementById('editUrlin').disabled = !this.checked;
};


document.getElementById('editLabelact').onchange = function() {
    document.getElementById('editLabel').disabled = !this.checked;
};

document.getElementById('editStatutact').onchange = function() {
    document.getElementById('editStatut').disabled = !this.checked;
};

document.getElementById('editDateClotact').onchange = function() {
    document.getElementById('editDateClot').disabled = !this.checked;
};

document.getElementById('editDescrpact').onchange = function() {
    document.getElementById('editDescrp').disabled = !this.checked;
};

</script>
        
        <script src="https://cdn.jsdelivr.net/holder/2.9.0/holder.min.js"></script>
         <script src="../assets/js/jquery-1.11.1.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/chart.min.js"></script>
	<script src="../assets/js/chart-data.js"></script>
	<script src="../assets/js/easypiechart.js"></script>
	<script src="../assets/js/easypiechart-data.js"></script>
	<script src="../assets/js/bootstrap-datepicker.js"></script>
    </body>
</html>

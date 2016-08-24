<%-- 
    Document   : vue_projet
    Created on : 28 juil. 2016, 15:45:58
    Author     : saif
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vue Projet</title>
        <script src="../assets/js/jquery-3.1.0.js"></script>   
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/css/datepicker3.css" rel="stylesheet">
        <link href="../assets/css/styles.css" rel="stylesheet">
        <link href="../assets/css/font-awesome.css" rel="stylesheet">
         <link rel="shortcut icon" href="../assets/img/logo-it-serv.jpg">
        
        <script src="../assets/js/lumino.glyphs.js"></script>
       
        <style>
            .table-nowrap {
	table-layout:fixed;
        word-wrap: break-word;
}

.table-nowrap td {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;

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
		<!--	<li><a href="tables.html"><svg class="glyph stroked clipboard-with-paper"><use xlink:href="#stroked-clipboard-with-paper"/></svg> Projets</a></li>
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
				<li class="active">Compte</li>
                                <li >Projet</li>
                                                   

			</ol>
		</div><!--/.row-->
                
                <br>
    <div class="row">
			<div class="col-lg-12">
				<h2>${projet.compte.compteNom} - ${projet.projetLabel}</h2>
			</div>
    </div>
                <div class="row ">
                    <div class="col-lg-12">
                       <div class="panel panel-default">            
                           <div class="panel-body">
                            <div class="btn-group btn-group-justified m-b-10">
                                    <a class="btn btn-primary" role="button">Actions</a>
                                    <a class="btn btn-primary" role="button">Demandes</a>
                                    <a class="btn btn-primary" role="button">Risuqes</a>
                                    <a class="btn btn-primary" role="button">Point en Suspens</a>
                                </div>
                       </div>
                    </div>
                    </div>
                    
                </div>
			
                <div class="row">	
                    <div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body tabs">
					
						<ul class="nav nav-pills">
							<li ><a href="#pilltab1" data-toggle="tab">Infos</a></li>
							<li class="active"><a href="#pilltab2" data-toggle="tab">Sous-Projets</a></li>
							
						</ul>
		
						<div class="tab-content">
							<div class="tab-pane fade" id="pilltab1">
                                                            <h3><strong>${projet.projetLabel}</strong></h3>
                                                            <h6><strong>Responsable/Consultant</strong></h6>
                                                            <br><br>
								<p>${projet.projetConcept}
                                                                    <br>
                                                                <br>
                                                                <div class="table-responsive">
                                                                <table class="table table-condensed">
                                                                    <thead>
                                                                       <tr>
                                                                          <th colspan="3"><h3>Infos Projet</h3></th>
                                                                       </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                             <td><b>Statut</b></td>
                                                                              <td>${projet.projetStatut}</td>
                                                                        </tr>
                                                                           <tr>
                                                                              <td><b>Date Début</b></td>
                                                                              <td>${projet.projetDteDebut}</td>
                                                                           </tr>
                                                                            <tr>
                                                                              <td><b>Date Cloture</b></td>
                                                                               <td>${projet.projetDteCloture}</td>
                                                                             </tr>
                                                                            
                                                                    </tbody>
                                                                </table>
                                                                </div>
                                                                
							</div>
							
                                                    
                                                    <div class="tab-pane fade in active" id="pilltab2">
                                                        <h3><strong>Sous-Projets</strong> </h3>
                                                        <br><br>
                                                        
								<p>${projet.projetConcept}
                                                                    <br><br>
                                                          
                                                        
                       <div class="panel panel-default" >
                            <div class="panel-heading">
                                <h3 class="panel-title"><strong>Table Sous-projets</strong></h3>
                                <span class="pull-right" style="margin-top: -30px; font-size: 15px;"><button class="btn btn-info btn-sm" data-title="Edit" data-toggle="modal" data-target="#add" ><span class="glyphicon glyphicon-plus-sign"></span></button></span>
                            </div>
                            <div class="panel-body" >
                                <div class="table-responsive" >
                                 <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th style="width:5%; ">#</th>
                                                    <th>Label</th>
                                                    <th>Statut</th>
                                                    <th style="width:10%;"></th>
    					            <th style="width:10%;"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${sousprojets}" var="sp">
                                                <tr>
                                                    <td class="clickable-row" data-href="/PMOITserv/actions">${sp.idSousprojet}</td>
                                                    <td class="clickable-row" data-href="/PMOITserv/actions">${sp.sousprojetLabel}</td>
                                                    <td class="clickable-row" data-href="/PMOITserv/actions">${sp.sousprojetStatut}</td>
                                                    
                                                    <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"data-target="#delete" data-id="${sp.idSousprojet}" id="edt" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                                    <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" data-id="${sp.idSousprojet}" id="del"><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                                   
                                                </tr>
                                            </c:forEach>
                                                
                                            </tbody>
                                        </table>
                                </div>
                            </div>
                                     </div>
                                                                
                                                                <br><br>
                </div>
							
                                                    
                                                    
                                               
						</div>
					</div>
				</div><!--/.panel-->
			
                    </div>
		</div><!-- /.row -->
        
    </div> <!-- main -->
    
    
      <!-- ModalAjoutsousprojet -->
  <div class="modal fade" id="add" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Nouveau Sous-projet</h3>
        </div>
           <form role="form" action="/PMOITserv/AjouterSousprojet" method="POST">
        <div class="modal-body">
                                              
           <div class="user-profile-content">
              <input type="hidden" name="idprojet" value="${projet.idProjet}" />                               
            <div class="form-group">
              <label for="Label">Label Sous-projet</label>
                <input type="text" placeholder="Sous-projet" id="Label" name="label"class="form-control">
            </div>
            <div class="form-group">
              <label for="Statut">Statut</label>
               <select type="text"  id="Statut" name="statut" class="form-control">
                   <option value="En cours" selected="selected">En cours</option>
                   <option value="Standby">StandBy</option>
                  <option value="Cloture">Cloturé</option>
               </select>
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
  </div> <!-- MODALAjoutsousprojet -->
        
        
       <!-- Modalsousprojet -->
  <div class="modal fade" id="edit" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Paramétres Sous-projet</h3>
        </div>
           <form role="form" action="/PMOITserv/ModifSousprojet" method="POST">
        <div class="modal-body">
                                                                          
           <div class="user-profile-content">
               <input type="hidden" name="idprojet" id="ProjetId" value="${projet.idProjet}" /> 
               <input type="hidden" name="idsousprojet" id="sousprojetId" value="104" />  
              <div class="form-group">
                <label for="label">Label Sous-projet</label>
                <input type="text" placeholder="Sous-projet" name="label" id="editlabel" class="form-control" disabled>
               </div>
               <div class="checkbox">
                <label>
		 <input type="checkbox" id="editlabelact"> Basculer
		</label>
	      </div>
             <div class="form-group">
              <label for="Statut">Statut</label>
               <select type="text"  id="editStatut" name="statut" class="form-control" disabled>
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
             </div>
        </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
            <button class="btn btn-info" type="submit">   Valider  </button>
        </div>
          </form>
      </div> <!-- Modal content-->
      
    </div>
  </div> <!-- MODAL Sousprojet -->
        
   <!-- Modal Supression sousprojet -->
  <div class="modal fade" id="delete" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Suppression Projet</h3>
        </div>
          
        <div class="modal-body">
           <br>
             <p>Êtes-vous sûr de vouloir supprimer définitivement ce sous-projet ?
                 <br>
             </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
            
            <button class="btn btn-info" id="supp" type="button">   Valider  </button>
        </div>
         
      </div> <!-- Modal content-->
      
    </div>
  </div> <!-- MODAL Supression sousprojet -->
  
   
  
  <script>
      
       var mysousprojetId;
        $(document).on("click", "#del", function () {
     mysousprojetId = $(this).data('id');
      });
      
    $(document).on("click", "#edt", function () {
     $("#sousprojetId").val($(this).data('id'));
     
});

  
       document.getElementById("supp").onclick = function () {
        location.href = "/PMOITserv/deleteSousprojet/"+${projet.idProjet}+"/"+mysousprojetId;
    };
  </script>  
  
  <script>
      document.getElementById('editlabelact').onchange = function() {
    document.getElementById('editlabel').disabled = !this.checked;
};

 document.getElementById('editStatutact').onchange = function() {
    document.getElementById('editStatut').disabled = !this.checked;
};
  </script>
  <script>
   jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.document.location = $(this).data("href");
    });
});
  </script>
  
      <!--   <script src="https://cdn.jsdelivr.net/holder/2.9.0/holder.min.js"></script> -->
         <script src="../assets/js/jquery-1.11.1.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/chart.min.js"></script>
	<script src="../assets/js/chart-data.js"></script>
	<script src="../assets/js/easypiechart.js"></script>
	<script src="../assets/js/easypiechart-data.js"></script>
	<script src="../assets/js/bootstrap-datepicker.js"></script>
    </body>
</html>

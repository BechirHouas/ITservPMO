<%-- 
    Document   : vue_projet
    Created on : 28 juil. 2016, 12:39:02
    Author     : saif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vue Compte</title>
        <script src="assets/js/jquery-3.1.0.js"></script>   
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/datepicker3.css" rel="stylesheet">
        <link href="assets/css/styles.css" rel="stylesheet">
        <link href="assets/css/font-awesome.css" rel="stylesheet">
        
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
							<li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profil</a></li>
							<li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Paramétres</a></li>
							<li><a href="#"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Déconnexion</a></li>
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
			<li><a href="comptes"><svg class="glyph stroked monitor"><use xlink:href="#stroked-monitor"/></svg> Comptes</a></li>
                        <li><a href="widgets.html"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg> Utilisateurs</a></li>
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
              display:block; margin:auto;" src="assets/img/logo-it-serv.jpg">
            </div>
            <div class="col-md-8">
              <div class="row">
                <div class="col-md-12">
                  <h1 class="only-bottom-margin">ITSERV</h1>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <span class="text-muted">Info:</span> xxxxxxxxxx<br>
                  <span class="text-muted">Info:</span> xxxxxxxxxx<br>
                  <span class="text-muted">Info:</span> xxxxxxxxxx<br><br>
                  <small class="text-muted">xxxxxxxxxxxxxxxxx</small>
                </div>
                <div class="col-md-6">
                    <div>
                    <a class="btn btn-social-icon btn-facebook" ><span class="fa fa-facebook"></span></a>
                    </div>
                    <div>
                    <a class="btn btn-social-icon btn-linkedin" ><span class="fa fa-linkedin"></span></a>
                    </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <hr><button class="btn btn-default pull-right" data-toggle="modal" data-target="#ModalCompte" ><i class="glyphicon glyphicon-pencil"></i> Edit</button>
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
							<div class="large">23</div>
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
							<div class="large">127</div>
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
							<div class="large">9</div>
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
					<div class="panel-body" style="min-height: 400px; max-height: 400px;overflow-y: scroll;">
						<ul class="todo-list">
                                                    <li class="todo-list-item">
                                                 <div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
                                                                        <a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
                                                                        
								</div>
                                                               
								<div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
                                                        </li> 
							<li class="todo-list-item" >
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
                                                                        <a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                                <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
                                                                       <a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                             
								<div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
                                                                        <a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                               <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
									<a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                            <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
									<a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                             <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
                                                        <li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
									<a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                            <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
                                                        <li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
									<a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                           <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
                                                        <li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
									<a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                            <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
                                                        <li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
									<a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                            <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
                                                        <li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
									<a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                             <div class="pull-right action-buttons">
								<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
							        <a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
                                                        <li class="todo-list-item">
								<div class="checkbox">
									<svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"/></svg>
									<a href="#"><label for="checkbox">   Project  </label> <label for="checkbox" style="padding-left: 100px">   Description   </label></a>
								</div>
                                                             <div class="pull-right action-buttons">
									<a href="#" data-toggle="modal" data-target="#ModalProjet"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg></a>
									<a href="#" class="trash" data-toggle="modal" data-target="#ModalSupp"><svg class="glyph stroked trash"><use xlink:href="#stroked-trash"></use></svg></a>
								</div>
							</li>
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
           <form role="form">
        <div class="modal-body">
         
            <br>
             <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
             <br>
                                                                
           <div class="user-profile-content">
                                       
            <div class="form-group">
              <label for="Label">Label Projet</label>
                <input type="text" value="Projet" id="Label" class="form-control">
            </div>
            <div class="form-group">
              <label for="Statut">Statut</label>
               <input type="text" value="En Cours" id="Statut" class="form-control">
             </div>
             <div class="form-group">
               <label for="DateClot">Date Cloture</label>
                <input type="text" value="12/08/16" id="DateClot" class="form-control">
             </div>
             <div class="form-group">
               <label for="Descrp">Description</label>
               <textarea style="height: 125px;" id="Descrp" class="form-control">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</textarea>
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
           <form role="form">
        <div class="modal-body">
                                              
           <div class="user-profile-content">
                                       
            <div class="form-group">
              <label for="Label">Label Projet</label>
                <input type="text" value="Projet" id="Label" class="form-control">
            </div>
            <div class="form-group">
              <label for="Statut">Statut</label>
               <input type="text" value="En Cours" id="Statut" class="form-control">
             </div>
             <div class="form-group">
               <label for="DateClot">Date Debut</label>
                <input type="text" value="12/08/16" id="DateClot" class="form-control">
             </div>
             <div class="form-group">
               <label for="Descrp">Description</label>
               <textarea style="height: 125px;" id="Descrp" class="form-control">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</textarea>
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
  <div class="modal fade" id="ModalCompte" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Paramétres Compte</h3>
        </div>
           <form role="form">
        <div class="modal-body">
           <br>
             <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
            <br>
                                                                
           <div class="user-profile-content">
              <div class="form-group">
                <label for="Nom">Nom Compte</label>
                <input type="text" value="Nom" id="Nom" class="form-control">
               </div>
              <div class="form-group">
                 <label for="Adresse">Adresse</label>
                 <input type="text" value="Adresse" id="Adresse" class="form-control">
              </div>
               <div class="form-group">
                 <label for="Tel">Tel</label>
                 <input type="text" value="Tel" id="Tel" class="form-control">
              </div>
               <div class="form-group">
                 <label for="Email">Email</label>
                 <input type="text" value="Email" id="Email" class="form-control">
              </div>
               <div class="form-group">
		<label>Entrée Logo</label>
		<input type="file">
		
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
            
            <button class="btn btn-info" type="submit">   Valider  </button>
        </div>
         
      </div> <!-- Modal content-->
      
    </div>
  </div> <!-- MODAL Supression projet -->
        
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

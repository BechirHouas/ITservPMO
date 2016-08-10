<%-- 
    Document   : vue_sousprojet
    Created on : 9 août 2016, 14:00:10
    Author     : saif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vue Sousprojet</title>
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
				<li class="active">Compte</li>
                                <li >Projet</li>
                                <li >Sousprojet</li>
                                                   

			</ol>
		</div><!--/.row-->
                
                <br>
    <div class="row">
			<div class="col-lg-12">
				<h2>Nom Compte - Label Projet - ID Sousprojet</h2>
			</div>
    </div>
                <br>
                <div class="row col-lg-12">
                	<div class="panel panel-primary">
                            <div class="panel-heading"  style="background-color:#30a5ff; height: 50px " >
					<h3 class="panel-title">Tableau de bord</h3>
                                        <span class="pull-right clickable" style="margin-top: -30px; font-size: 15px;"><i class="glyphicon glyphicon-chevron-up"></i></span>
				</div>
				<div class="panel-body">
			
                <div class="row">
			<div class="col-md-6">
				<div class="panel panel-default">
                                    <div class="panel-heading" align="center">Graphique sectoriel</div>
					<div class="panel-body" style="overflow-x:scroll;  overflow-y:scroll;">
						<div class="canvas-wrapper">
				                     <div id="chartContainer" style="height: 310px "></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default" >
					<div class="panel-heading" align="center">Actions en nombres</div>
					<div class="panel-body" style="overflow-x:scroll;  overflow-y:scroll;">
                                            <div class="rectangle" align="center" style="height: 420px">
     
         <p>
            <a href="#" class="btn btn-sq-lg btn-primary" data-toggle="modal" data-target="#myModal">
                <i class="fa fa-5x fa-5x">8</i><br/>
                Actions en <br>cours
            </a>
            <a href="#" class="btn btn-sq-lg btn-success" data-toggle="modal" data-target="#myModal">
              <i class="fa fa-5x fa-5x">8</i><br/>
              Actions en <br>cours en retard
            </a>
            <a href="#" class="btn btn-sq-lg btn-warning" data-toggle="modal" data-target="#myModal">
              <i class="fa fa-5x fa-5x">9</i><br/>
              Actions dans <br>le temps
            </a>
            <a href="#" class="btn btn-sq-lg btn-danger" data-toggle="modal" data-target="#myModal">
              <i class="fa fa-5x fa-5x">11</i><br/>
              Actions en <br>standby
            </a>
          </p>
         
     </div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
              </div>  
                            </div>
                </div>
                
                
   <div class="modal fade bd-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        <div class="table-responsive">
            
            <table id="mytable" class="js-dynamitable     table table-bordered">      
      <!-- table heading -->
      <thead>
          <tr class="hide-cols">
            
              <th class="hider">Action <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Chantier <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Statut <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Responsable <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Priorite <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Avancement <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          </tr>
      </thead>
      <tbody>
        <tr>
          <td>Freddy Krueger</td>
          <td>freddy.krueger@sample.com</td>
          <td class="text-right">
              <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span>80% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          <td class="text-right">122</td>
          
        </tr>
        <tr>
          <td>Clint Eastwood</td>
          <td>clint.eastwood@sample.com</td>
          <td class="text-right">    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                        <span>50% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">48 500$</td>
          <td class="text-right">+12</td>
          <td class="text-right">122</td>
          
        </tr>
        <tr>
          <td>Peter Parker</td>
          <td>peter.parker@dynamitable.com</td>
          <td class="text-right">    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="32" aria-valuemin="0" aria-valuemax="100" style="width: 32%">
                        <span>32% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">210$</td>
          <td class="text-right">-5</td>
          <td class="text-right">122</td>
          
        </tr>
        <tr>
          <td>Bruce Wayne</td>
          <td>bruce.wayne@dynamitable.com</td>
          <td class="text-right">    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
                        <span>65% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">-8500$</td>
          <td class="text-right">+2</td>
          <td class="text-right">122</td>
      
            </tr>
      </tbody>
            </table>
        </div>
      </div>
      
    </div>
  </div>
</div>                
    
    <div class="row col-lg-12">		
     <div class="col-md-12">
         
        <div class="form-group">
            <label for="search" style="margin-top: 50px">Search for actions: </label>
        <input type="text" id="search" class="form-control">
    </div>
    <script>
    $(document).ready(function () {
        $('#search').suggestionBox({
            filter: true,
            widthAdjustment: -8,
            leftOffset: 4,
            topOffset: 0,
        }).loadSuggestions('suggestions.json');
    });
</script>     
        <div class="table-responsive">
            
            <table id="mytable" class="js-dynamitable     table table-bordered">      
      <!-- table heading -->
      <thead>
            
          <tr class="hide-cols">
            
              <th class="hider">Action <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Chantier <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Statut <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Responsable <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Priorite <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Avancement <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Retard(j) <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Date création <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Date cloture planifié <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Date cloture réelle  <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Commentaires  <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          
          </tr>
        <!-- Filtering
                        * js-filter => filter trigger (input, select)
                        -->
                        <tr class="b">
                            <th> <!-- input filter -->
            
            <input  class="js-filter  form-control" type="text" value="">
          </th>
          
          <div class="ui multiple selection dropdown" style="visibility: hidden">
  <!-- This will receive comma separated value like OH,TX,WY !-->
  <input name="statut" type="hidden">
  <i class="dropdown icon"></i>
  <div class="default text">statut</div>
  <div class="menu">
						<option value="@en cours">En cours</option>
              <option value="@cloturée">Cloturée</option>
              <option value="@en standby">En standby</option>
              <option value="@annulée">Annulée</option>
            
  </div>
</div>
          <th> <!-- select filter -->
            
      
<select name="statut" class="ui selection dropdown" multiple="" id="multi-select">
  <option value="">Statut</option>
    <option value=""></option>
              <option value="@en cours">En cours</option>
              <option value="@cloturée">Cloturée</option>
              <option value="@en standby">En standby</option>
              <option value="@annulée">Annulée</option>
            </select>
<!--
              <select class="ui fluid search dropdown" multiple="">
              <option value=""></option>
              <option value="@dynamitable.com">dynamitable.com</option>
              <option value="@sample.com">Sample</option>
            </select>
          </th>
    -->      <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
        
            </tr>
      </thead>
      
      <!-- table body -->
      <tbody>
        <tr>
          <td>Freddy Krueger</td>
          <td>freddy.krueger@sample.com</td>
          <td class="text-right">
              <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span>80% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          
          <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
        </tr>
        <tr>
          <td>Clint Eastwood</td>
          <td>clint.eastwood@sample.com</td>
          <td class="text-right">    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                        <span>50% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">48 500$</td>
          <td class="text-right">+12</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          
          <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
        </tr>
        <tr>
          <td>Peter Parker</td>
          <td>peter.parker@dynamitable.com</td>
          <td class="text-right">    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="32" aria-valuemin="0" aria-valuemax="100" style="width: 32%">
                        <span>32% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">210$</td>
          <td class="text-right">-5</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          
          <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
        </tr>
        <tr>
          <td>Bruce Wayne</td>
          <td>bruce.wayne@dynamitable.com</td>
          <td class="text-right">    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
                        <span>65% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">-8500$</td>
          <td class="text-right">+2</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          
          <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
            </tr>
        <tr>
          <td>Jackie Chan</td>
          <td>jackie.chan@sample.com</td>
          <td class="text-right">    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 25%">
                        <span>25% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">-250.55$</td>
          <td class="text-right">0</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          
          <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
          <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
        </tr>
        <tr>
          <td>Bruce Lee</td>
          <td>bruce.lee@sample.com</td>
          <td class="text-right">    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                        <span>10% Complete </span>
                      </div>
                       
                    </div>
          </td>
          <td class="text-right">510$</td>
          <td class="text-right">-7</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          <td class="text-right">122</td>
          <td class="text-right">2300$</td>
          <td class="text-right">+15</td>
          
          <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
        </tr>
      </tbody>
    </table>
            
        </div>       


<div id="show"></div>
<div class="clearfix"></div>
<ul class="pagination pull-right">
  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
</ul>
                
            </div>
            
        </div>
        
	
        </div>


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>                
                
    <script type="text/javascript">
$(document).ready(function(){
$("#mytable #checkall").click(function () {
        if ($("#mytable #checkall").is(':checked')) {
            $("#mytable input[type=checkbox]").each(function () {
                $(this).prop("checked", true);
            });

        } else {
            $("#mytable input[type=checkbox]").each(function () {
                $(this).prop("checked", false);
            });
        }
    });
    
    $("[data-toggle=tooltip]").tooltip();
});

</script>

        <script src="assets/js/dynamitable.jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/chart.min.js"></script>
	<script src="assets/js/bootstrap-datepicker.js"></script>
	<script src="assets/js/bootstrap-table.js"></script>
        <script src="assets/js/lumino.glyphs.js"></script>
        <script src="assets/js/hide_cols.js"></script>
        <script src="assets/js/suggestion-box.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery.canvasjs.min.js"></script>

        <link rel="stylesheet" type="text/css" href="assets/css/semantic.min.css">
        <script src="assets/js/semantic.min.js"></script>
        <link href="assets/css/hide_cols.css" rel="stylesheet">
        <link href="assets/css/styles.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/suggestion-box.min.css">
<script>
$("#mytable").hideCols();
</script>
<script>
    $('#multi-select')
  .dropdown()
;</script>
<script type="text/javascript"> 
window.onload = function() { 
	$("#chartContainer").CanvasJSChart({ 
                height:300,
                width :500,
		title: { 
		//	text: "Worldwide Smartphone sales by brand - 2012",
		//	fontSize: 24
		}, 
		axisY: { 
			title: "Actions en %" 
		}, 
		legend :{ 
			verticalAlign: "center",
			horizontalAlign: "right" 
		}, 
		data: [ 
		{ 
			type: "pie", 
			showInLegend: true, 
			toolTipContent: "{label} <br/> {y} %", 
			indexLabel: "{y} %", 
			dataPoints: [ 
				{ label: "Actions en retard",  y: 30.3, legendText: "Actions en retard"}, 
				{ label: "Actions dans le temps",    y: 69.7, legendText: "Actions dans le temps"  }, 
				] 
		} 
		] 
	}); 
} 
</script> 
<script>
    function setBarWidth(dataElement, barElement, cssProperty, barPercent) {
  var listData = [];
  $(dataElement).each(function() {
    listData.push($(this).html());
  });
  var listMax = Math.max.apply(Math, listData);
  $(barElement).each(function(index) {
    $(this).css(cssProperty, (listData[index] / listMax) * barPercent + "%");
  });
}
setBarWidth(".style-1 span", ".style-1 em", "width", 100);
</script>  
<script>
    $(document).on('click', '.panel-heading span.clickable', function(e){
    var $this = $(this);
	if(!$this.hasClass('panel-collapsed')) {
		$this.parents('.panel').find('.panel-body').slideUp();
		$this.addClass('panel-collapsed');
		$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
	} else {
		$this.parents('.panel').find('.panel-body').slideDown();
		$this.removeClass('panel-collapsed');
		$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
	}
})
</script>
    </body>
</html>

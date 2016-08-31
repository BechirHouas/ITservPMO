


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vue Sousprojet</title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
        <script src="assets/js/jquery-1.11.1.min.js"></script>   
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/styles.css" rel="stylesheet">
        <link href="assets/css/font-awesome.css" rel="stylesheet">
        <script src="assets/js/lumino.glyphs.js"></script>
        <script src="assets/js/calendar.js"></script>
          <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  
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
			<li class="active"><a href="/PMOITserv/comptes"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Tableau de bord</a></li>
			<li><a href="/PMOITserv/comptes"><svg class="glyph stroked monitor"><use xlink:href="#stroked-monitor"/></svg> Comptes</a></li>
                        
                </ul>
            
         
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
                <i class="fa fa-5x fa-5x">${CoursCount}</i><br/>
                Actions en <br>cours
            </a>
            <a href="#" class="btn btn-sq-lg btn-success" data-toggle="modal" data-target="#myModal1">
              <i class="fa fa-5x fa-5x">${RetardCount}</i><br/>
              Actions en <br>retard
            </a>
            <a href="#" class="btn btn-sq-lg btn-warning" data-toggle="modal" data-target="#myModal3">
              <i class="fa fa-5x fa-5x">${(ActionAll-RetardCount)}</i><br/>
              Actions dans <br>le temps
            </a>
            <a href="#" class="btn btn-sq-lg btn-danger" data-toggle="modal" data-target="#myModal2">
              <i class="fa fa-5x fa-5x">${StandCount}</i><br/>
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
        <h4 class="modal-title" id="myModalLabel">Actions En Cours</h4>
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
          
            <c:forEach items="${ActionEnCours}" var="actions" >
						<tr>
                                                    <td id="tdTable">${actions.actionTitre}</td>
							<td id="tdTable">${actions.chantier.chantierLabel}</td>
							<td id="tdTable">${actions.actionStatut}</td>
                                                        <td id="tdTable">${actions.utilisateur.utilisateurNom}</td>
							<td id="tdTable">${actions.actionPriorite}</td>
							<td class="text-right" id="tdTable">
                                                        <div class="progress progress-striped">
                                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${actions.actionAvancement}%">
                                                          <span>${actions.actionAvancement}% Complete </span>
                                                        </div></div></td>
                                                       </tr>
			</c:forEach>		
   
        
        
      </tbody>
            </table>
        </div>
      </div>
      
    </div>
  </div>
</div>                
    
              
              
    <div class="modal fade bd-example-modal-lg" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Actions En Retard</h4>
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
          
            <c:forEach items="${ActionEnRetard}" var="actions" >
						<tr>
                                                    <td id="tdTable">${actions.actionTitre}</td>
							<td id="tdTable">${actions.chantier.chantierLabel}</td>
							<td id="tdTable">${actions.actionStatut}</td>
                                                        <td id="tdTable">${actions.utilisateur.utilisateurNom}</td>
							<td id="tdTable">${actions.actionPriorite}</td>
							<td class="text-right" id="tdTable">
                                                        <div class="progress progress-striped">
                                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${actions.actionAvancement}%">
                                                          <span>${actions.actionAvancement}% Complete </span>
                                                        </div></div></td>
                                                       </tr>
			</c:forEach>		
   
        
        
      </tbody>
            </table>
        </div>
      </div>
      
    </div>
  </div>
</div>
              
    <div class="modal fade bd-example-modal-lg" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Actions En StandBy</h4>
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
          
            <c:forEach items="${ActionEnStand}" var="actions" >
						<tr>
                                                    <td id="tdTable">${actions.actionTitre}</td>
							<td id="tdTable">${actions.chantier.chantierLabel}</td>
							<td id="tdTable">${actions.actionStatut}</td>
                                                        <td id="tdTable">${actions.utilisateur.utilisateurNom}</td>
							<td id="tdTable">${actions.actionPriorite}</td>
							<td class="text-right" id="tdTable">
                                                        <div class="progress progress-striped">
                                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${actions.actionAvancement}%">
                                                          <span>${actions.actionAvancement}% Complete </span>
                                                        </div></div></td>
                                                       </tr>
			</c:forEach>		
   
        
        
      </tbody>
            </table>
        </div>
      </div>
      
    </div>
  </div>
</div>
              
              
    <div class="modal fade bd-example-modal-lg" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Actions Dans le temps</h4>
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
          
            <c:forEach items="${ActionInTime}" var="actions" >
						<tr>
                                                    <td id="tdTable">${actions.actionTitre}</td>
							<td id="tdTable">${actions.chantier.chantierLabel}</td>
							<td id="tdTable">${actions.actionStatut}</td>
                                                        <td id="tdTable">${actions.utilisateur.utilisateurNom}</td>
							<td id="tdTable">${actions.actionPriorite}</td>
							<td class="text-right" id="tdTable">
                                                        <div class="progress progress-striped">
                                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${actions.actionAvancement}%">
                                                          <span>${actions.actionAvancement}% Complete </span>
                                                        </div></div></td>
                                                       </tr>
			</c:forEach>		
   
        
        
      </tbody>
            </table>
        </div>
      </div>
      
    </div>
  </div>
</div>
    <div class="row col-lg-12">		
     <div class="col-md-12">
         
   
         <div class="row">
         
             
         </div>     
    
    
    
     
  
        <div class="table-responsive">
            
            <table id="mytable" class="js-dynamitable    table table-bordered">      
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
           <th ><input class="js-filter  form-control" type="text" value=""></th>
 
          <th> <!-- select filter -->
            
      
<select name="statut" class="ui selection dropdown"  id="multi-select" >
    <option value="Tous" >Tous les status</option>
              <option value="En cours">En cours</option>
              <option value="Cloturée">Cloturée</option>
              <option value="En standby">En standby</option>
              <option value="Annulée">Annulée</option>
            </select>  
      
          </th>    
              
           <th ><input class="js-filter  form-control" type="text" value=""></th>       
      
           
          <th> <!-- select filter -->
            
      
              <select name="priorite" class="ui selection dropdown" id="multi-select1" >
  
                  <option value="Tous" selected="">Tous les priorités</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
            </select>
          </th>
          
      <script>
          $('#multi-select1').on('change', function() {
        var priorite=$(this).val();
        var prio=$.trim($(".prio").text()).split("")
        $(".tb").find('tr').each(function() {    
     
     var p=prio.shift()  
     if ((p==priorite) || (priorite=="Tous")) {
         
          $(this).show()
        }else{
            $(this).hide()
        
        }
   });
    } );
           $('#multi-select').on('change', function() {
        
        var statut=$(this).val();
        var stat=$.trim($(".stat").text()).match(/[A-Z]*[^A-Z]+/g);
        
        $(".tb").find('tr').each(function() {    
     
     var s=stat.shift()  
     if ((s==statut) || (statut=="Tous")) {
         
          $(this).show()
        }else{
            $(this).hide()
        
        }
   });
    } );
        

      </script>      
          <th> <input type="text" id="range" name="range" value="" ></th>
    
  <script>

    $(function () {
        var $range = $("#range");
        $range.ionRangeSlider({
            hide_min_max: true,
            keyboard: true,
            min: 0,
            max: 100,
            from: 0,
            to: 99,
            type: 'double',
            step: 1,
            postfix: "%",
            grid: true})
            $range.on("change", function () {
    var $this = $(this),
        value = $this.prop("value").split(";");

    console.log(value[0] + " - " + value[1]);
   
  
  var pourcentage=$.trim($(".pourcentage").text()).split("% Complete")
   $(".tb").find('tr').each(function() {    
     
     
        
        var p=pourcentage.shift()
         
     if ((p<=value[0]) || (p>=value[1])) {
          $(this).hide()
        }else{
            $(this).show()
        }
   });
    
 
        
      });
    });

    
</script>
          
<th>Entre <input class="form-control" type="text"  style="width: 70px; text-align: left;display: inline;" id="retardbegin"> ET <input class="form-control" id="retardend" style="width: 70px;text-align: right;display: inline;" type="text" ></th>

<script>
    $(document).ready(function() {
    
     var begin=0;
     var end=1000;
    // Event listener to the two range filtering inputs to redraw on input
    $('#retardbegin' ).keyup(function() {
        var retard=$.trim($(".retard").text()).split(" ")
        if($('#retardbegin').val()==""){
            begin=0;
        }else{ 
        begin=$('#retardbegin').val()
        }
        
        $(".tb").find('tr').each(function() {    
     
        
        
     var r=retard.shift()
     
     if ((r<begin) || (r>end)) {
         console.log($(this))
          $(this).hide()
        }else{
            $(this).show()
        
        }
   });
    } );
  $('#retardend' ).keyup(function() {
        var retard=$.trim($(".retard").text()).split(" ")
        if($('#retardend').val()==""){
            end=1000
        }else{
         end=$('#retardend').val()
        }
        
        $(".tb").find('tr').each(function() {    
     
        
        
     var r=retard.shift()
     
     if ((r<begin) || (r>end)) {
         console.log($(this))
          $(this).hide()
        }else{
            $(this).show()
        
        }
   });
    } );      
} );
</script>
<th ><input class="js-filter  form-control" type="text" value="" id="dateCreFilter"></th>
<th ><input class="js-filter  form-control" type="text" value="" id="datePlaFilter"></th>
<th ><input class="js-filter  form-control" type="text" value="" id="dateRlFilter"></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
        
            </tr>
      </thead>
      
      <!-- table body -->
      <tbody class="tb">
          
            <c:forEach items="${actions}" var="actions" >
						<tr>
                                                    <td id="tdTable" class="titre">${actions.actionTitre}</td>
							<td id="tdTable">${actions.chantier.chantierLabel}</td>
							<td id="tdTable" class="stat">${actions.actionStatut}</td>
                                                        <td id="tdTable">${actions.utilisateur.utilisateurNom}</td>
							<td id="tdTable" class="prio">${actions.actionPriorite}</td>
							<td class="text-right" id="tdTable" >
                                                        <div class="progress progress-striped">
                                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${actions.actionAvancement}%">
                                                          <span class="pourcentage">${actions.actionAvancement}% Complete</span>
                                                        </div></div></td>
                                                       
                                                        <td id="tdTable" class="retard"> ${actions.actionRetard}</td>
                                                        <td id="tdTable">${actions.actionCreationDte}</td>
							<td id="tdTable">${actions.actionCloturePlanDte}</td>
							<td id="tdTable">${actions.actionClotureRealDte}</td>
                                                        <td id="tdTable" class="commentaire">${actions.actionComment}</td>
                                                        <td style="min-width: 0px" id="tdTable"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" id="modif" data-title="Edit" data-toggle="modal" data-target="#edit" data-id="${actions.idAction}"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                                        <td style="min-width: 0px" id="tdTable"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" data-id="${actions.idAction}" id="del"><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
                                                        

							
						</tr>
			</c:forEach>		
   
        
        
      </tbody>
    </table>
            
        </div>       
         <script>
             $(document).ready(function(){
             $("#modif").click(function() {
    var $row = $(this).closest("tr");    // Find the row
    var titre=$row.find(".titre").text();
    
    var retard = $row.find(".retard").text(); // Find the text
    var comment=$row.find(".commentaire").text();
    // Let's test it out
        var a=document.getElementById("updateModalForm").elements["action"];
        var b=document.getElementById("updateModalForm").elements["retard"];
        var c=document.getElementById("updateModalForm").elements["commentaire"];
        $(a).val(titre)
        $(b).val(retard)
        $(c).val(comment)
});
             })
         </script>

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


<div class="modal fade" id="ajout" tabindex="-1" role="dialog" aria-labelledby="ajout" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
             <form method="post" action="ajouterAction">  
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Ajouter action</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
              <label for="inputNomMatiere">Action</label>
              <input class="form-control" id="actionTitre" name="action" type="text" autocomplete="true">
        </div>
        <div class="form-group">
        <label for="inputNomMatiere">Chantier</label>
        
        <select name="chantier" class="form-control">
										<c:forEach var="item" items="${chantiers}">
											<option value="${item.idChantier}">${item.chantierLabel}</option>
										</c:forEach>
									</select></div>
        <div class="form-group">
              <label for="inputNomMatiere">Statut</label>
        
              <select class="form-control "  id="Statut" type="text" placeholder="Irshad" name="statut">
                  <option value="En cours" selected="selected">En cours</option>
                  <option value="Cloturée">Cloturée</option>
                  <option value="En standby">En standby</option>
                  <option value="Annulée">Annulée</option>
              </select>
      
        </div>
              
              <div class="form-group">
        <label for="inputNomMatiere">Responsable</label>
        
        <select name="responsable" class="form-control">
										<c:forEach var="item" items="${responsables}">
											<option value="${item.idUtilisateur}">${item.utilisateurNom}
												${item.utilisateurPrenom}</option>
										</c:forEach>
									</select></div>
              
              
        <div class="form-group">
              <label for="inputNomMatiere">Priorité</label>
        
              <select class="form-control "  id="Statut" type="text" name="priorite">
                  <option value="1" selected="selected">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
              </select>
      
        </div>
              <div class="form-group">
        <label for="inputNomMatiere">Avancement</label>
        
        <input class="form-control "  id="chantier" type="text" name="avancement">
        </div>
      <!--        <div class="form-group">
        <label for="inputNomMatiere">Retard</label>
        
        <input class="form-control "  id="actionRetard" type="text" name="retard">
        </div>
        -->      
              <div class="form-group" >
        <label for="inputNomMatiere">Date création</label>
<input type="text" class="form-control " name="DateCreation" id="datepicker" />
        
        </div>
              <div class="form-group" >
        <label for="inputNomMatiere">Date Cloture Planifiée</label>
        
        <input type="text" class="form-control " name="DateCloturePlanifie" id="datepicker1" />
        </div>
        
        
              <div class="form-group">
        <label for="inputNomMatiere">Date Cloture Réelle</label>
        
        <input type="text" name="DateClotureReelle" class="form-control " id="datepicker2" />
        </div>
              <div class="form-group">
        <label for="inputNomMatiere">Commentaire</label>
        
        <input class="form-control "  id="chantier" type="text" name="commentaire">
        </div>      
              
      </div>
          <div class="modal-footer ">
              <button type="submit" class="btn btn-primary btn-lg" style="width: 100%;" ><span class="glyphicon glyphicon-ok-sign"></span> Ajouter</button>
      </div>
        </form>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>

        
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
        <form method="post" id="updateModalForm">  
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Modifier action</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
              <label for="inputNomMatiere">Action</label>
              <input class="form-control" id="actionTitre" name="action" type="text" autocomplete="true">
        </div>
        <div class="form-group">
        <label for="inputNomMatiere">Chantier</label>
        
        <select name="chantier" class="form-control">
										<c:forEach var="item" items="${chantiers}">
											<option value="${item.idChantier}">${item.chantierLabel}</option>
										</c:forEach>
									</select></div>
        <div class="form-group">
              <label for="inputNomMatiere">Statut</label>
        
              <select class="form-control "  id="Statut" type="text"  name="statut">
                  <option value="En cours" selected="selected">En cours</option>
                  <option value="Cloturée">Cloturée</option>
                  <option value="En standby">En standby</option>
                  <option value="Annulée">Annulée</option>
              </select>
      
        </div>
              
              <div class="form-group">
        <label for="inputNomMatiere">Responsable</label>
        
        <select name="responsable" class="form-control">
										<c:forEach var="item" items="${responsables}">
											<option value="${item.idUtilisateur}">${item.utilisateurNom}
												${item.utilisateurPrenom}</option>
										</c:forEach>
									</select></div>
              
              
        <div class="form-group">
              <label for="inputNomMatiere">Priorité</label>
        
              <select class="form-control "  id="Statut" type="text" name="priorite">
                  <option value="1" selected="selected">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
              </select>
      
        </div>
              <div class="form-group">
        <label for="inputNomMatiere">Avancement</label>
        
        <input class="form-control "  id="chantier" type="text" name="avancement">
        </div>
              <div class="form-group">
        <label for="inputNomMatiere">Retard</label>
        
        <input class="form-control "  id="actionRetard1" type="text" name="retard">
        </div>
             <div class="form-group" >
        <label for="inputNomMatiere">Date création</label>
        
        <input type="text" name="DateCreation" id="datepickermodif"class="form-control" />
        </div>
              <div class="form-group">
        <label for="inputNomMatiere">Date Cloture Planifiée</label>
        
        <input type="text" name="DateCloturePlanifie" id="datepicker1modif" class="form-control"/>
        </div>
        
        
              <div class="form-group">
        <label for="inputNomMatiere">Date Cloture Réelle</label>
        
        <input type="text" name="DateClotureReelle" id="datepicker2modif" class="form-control"/>
        </div>
              <div class="form-group">
        <label for="inputNomMatiere">Commentaire</label>
        
        <input class="form-control "  id="chantier" type="text" name="commentaire">
        </div>      
              
      </div>
          <div class="modal-footer ">
              <button type="submit" class="btn btn-primary btn-lg" style="width: 100%;" ><span class="glyphicon glyphicon-ok-sign"></span> Modifier</button>
      </div>
        </form>
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
        <h4 class="modal-title custom_align" id="Heading">Supprimer cet action</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Voulez vous supprimer cet action?</div>
       
      </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-success" id="suppression"><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
        <script>

    var myAction;
        $(document).on("click", "#modif", function () {
     myAction = $(this).data('id');
                            document.getElementById('updateModalForm').setAttribute("action", "updateAction/"+myAction);
});
        </script>
        
                
                <script>

        var myActionId;
        $(document).on("click", "#del", function () {
     myActionId = $(this).data('id');
     
});
        
    document.getElementById("suppression").onclick = function () {
        location.href = "deleteAction/"+myActionId;
    };
</script>


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
	<script src="assets/js/bootstrap-table.js"></script>
        <script src="assets/js/lumino.glyphs.js"></script>
        <script src="assets/js/hide_cols.js"></script>
        <script type="text/javascript" src="assets/js/jquery.canvasjs.min.js"></script>
        <script src="assets/js/ion.rangeSlider.js"></script>
        <script src="assets/js/table.js"></script>
	

        <link rel="stylesheet" type="text/css" href="assets/css/semantic.min.css">
        <script src="assets/js/semantic.min.js"></script>
        <link href="assets/css/hide_cols.css" rel="stylesheet">
        <link href="assets/css/styles.css" rel="stylesheet">
        <link href="assets/css/normalize.css" rel="stylesheet">
        <link href="assets/css/ion.rangeSlider.skinModern.css" rel="stylesheet">
        <link href="assets/css/ion.rangeSlider.css" rel="stylesheet">
        
         
<script>
$("#mytable").hideCols();
</script>
<script>
    $('#multi-select')
  .dropdown()
;</script>
<script>
    $('#multi-select1')
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
				{ label: "Actions en retard",  y: ${RetardCount*100/ActionAll}, legendText: "Actions en retard"}, 
				{ label: "Actions dans le temps",    y: ${(ActionAll-RetardCount)*100/ActionAll}, legendText: "Actions dans le temps"  }, 
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
$('#sandbox-container input').datepicker({
    todayHighlight: true
});
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

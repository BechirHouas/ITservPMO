


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
		
			<li role="presentation" class="divider"></li>
			<li><a href="login.html"><svg class="glyph stroked key"><use xlink:href="#stroked-key"></use></svg> Login Page</a></li>
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
          
            <c:forEach items="${actions}" var="actions" >
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
             <div class="col-lg-10">
                 <div id="search_box_container2"></div>
                 <div id="search_query2">&nbsp;</div>

             </div>
             <div class="col-lg-2">
                 <div style="min-width: 0px"><p data-placement="top" data-toggle="tooltip" title="Ajouter"><button class="btn btn-primary btn-xs" data-title="Ajouter" data-toggle="modal" data-target="#ajout" style="background-color: #30a5ff;border-color: #30a5ff;width: 150px;height: 30px" ><span>Ajout</span></button></p></div>
             </div>
         </div>     
    
    <script>
      $(document).ready(function() {
        var visualSearch = VS.init({
          container  : $('#search_box_container2'),
          query      : '',
          minLength  : 0,
          showFacets : true,
          readOnly   : false,
          placeholder : "Search for actions...",
          unquotable : [

            'priorite',
            'chantier'
          ],
          callbacks  : {
            search : function(query, searchCollection) {
              var $query = $('#search_query2');
              $query.stop().animate({opacity : 1}, {duration: 300, queue: false});
              $query.html('<span class="raquo">&raquo;</span> You searched for: <b>' + searchCollection.serialize() + '</b>');
              var str=searchCollection.serialize();
              var res=str.split("/");
              var clm=[];
              var val=[];
              var x;
                for(x in res){
            var y=res[x].split(": ")
                 clm.push(y[0]);
                 val.push(y[1])
                }
                for(x in clm){
                    console.log(clm[x])
                    switch(clm[x]){
                        case 'statut' :
                            console.log(val[x])
                var $rowsNo = $('#mytable tbody tr').filter(function () {
                    console.log($.trim($(this).find('td').eq(2).text()) === val[x].toString())                   
        return $.trim($(this).find('td').eq(2).text()) !== val[x].toString()
    }).toggle();
    break;
                     case 'priorite' :
                var $rowsNo = $('#mytable tbody tr').filter(function () {
        return $.trim($(this).find('td').eq(4).text()) !== val[x]
    }).toggle();
    break;
                     case 'chantier' :
                var $rowsNo = $('#mytable tbody tr').filter(function () {
        return $.trim($(this).find('td').eq(1).text()) !== val[x]
    }).toggle();
    break;
                



}
                }
                var table=document.getElementById("#mytable")
                console.log(query.length)
                if(query.length<1){
                $("#mytable").toggle();
                }
                
              clearTimeout(window.queryHideDelay2);
              window.queryHideDelay2 = setTimeout(function() {
                $query.animate({
                  opacity : 0
                }, {
                  duration: 1000,
                  queue: false
                });
              }, 2000);
            },
            valueMatches : function(category, searchTerm, callback) {
              switch (category) {
              
                case 'statut':
                  callback(['en cours', 'cloture', 'en standby','annulée']);
                  break;
                case 'priorite':
                  callback(['1', '2', '3']);
                  break;
                case 'chantier':
                  callback([
                    'chantier1',
                    'chantier2',
                    'chantier3',
                    'chantier4'
                  ]);
                  break;
              }
            },
            facetMatches : function(callback) {
              callback([
                'chantier', 'statut', 'priorite',
             /*   { label: 'city',    category: 'location' },
                { label: 'address', category: 'location' },
                { label: 'country', category: 'location' },
                { label: 'state',   category: 'location' },*/
              ], {
                  preserveOrder: true
              });
            }
          }
        });
      });
    </script>
    
     
  
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
      
           <th ><input class="js-filter  form-control" type="text" value=""></th>       
          <div class="ui multiple selection dropdown" style="visibility: hidden">
  <!-- This will receive comma separated value like OH,TX,WY !-->
  <input name="priorite" type="hidden">
  <i class="dropdown icon"></i>
  <div class="default text">priorite</div>
  <div class="menu">
		<option value="@1">1</option>
              <option value="@2">2</option>
              <option value="@3">3</option>
            
  </div>
</div>
          <th> <!-- select filter -->
            
      
<select name="priorite" class="ui selection dropdown" multiple="" id="multi-select1">
  <option value="">Priorite</option>
    <option value=""></option>
              <option value="@1">1</option>
              <option value="@2">2</option>
              <option value="@3">3</option>
            </select>
          </th>
          
           <th> <input type="text" id="range" name="range" value="" ></th>
    
  <script>

    $(function () {
        var $range = $("#range");
        $range.ionRangeSlider({
            hide_min_max: true,
            keyboard: true,
            min: 0,
            max: 100,
            from: 10,
            to: 90,
            type: 'double',
            step: 1,
            postfix: "%",
            grid: true})
            $range.on("change", function () {
    var $this = $(this),
        value = $this.prop("value").split(";");

    console.log(value[0] + " - " + value[1]);
    var table = document.getElementById("mytable");
        
        for (var i = 1, row; row = table.rows[i]; i++) {
           //iterate through rows (we SKIP the first row: counter starts at 1!)
            for (var j = 0, col; col = row.cells[j]; j++) {
               //iterate through columns: if first column not in range: HIDE, else SHOW
               
               if (j == 5) { 
                    
                    
                    if (($(col).html() >= value[0]) && ($(col).html() <= value[1])) {
                       // if in interval
                       console.log($(col).html());
                       $(row).show();
                   } else {
                       
                       $(row).hide();
                   }
               
               }
        }}
        
      });
    });

    
</script>
          
          <th><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
        
            </tr>
      </thead>
      
      <!-- table body -->
      <tbody class="tb">
          
            <c:forEach items="${actions}" var="actions" >
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
                                                        <td id="tdTable"> ${actions.actionRetard}</td>
                                                        <td id="tdTable">${actions.actionCreationDte}</td>
							<td id="tdTable">${actions.actionCloturePlanDte}</td>
							<td id="tdTable">${actions.actionClotureRealDte}</td>
                                                        <td id="tdTable">${actions.actionComment}</td>
                                                        <td style="min-width: 0px" id="tdTable"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" id="modif" data-title="Edit" data-toggle="modal" data-target="#edit" data-id="${actions.idAction}"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                                        <td style="min-width: 0px" id="tdTable"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" data-id="${actions.idAction}" id="del"><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
                                                        

							
						</tr>
			</c:forEach>		
   
        
        
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
                  <option value="Cloture">Cloture</option>
                  <option value="En standby">En standby</option>
                  <option value="Annule">Annulé</option>
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
        
        <input class="form-control "  id="chantier" type="text" name="retard">
        </div>
              
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
                  <option value="Cloture">Cloture</option>
                  <option value="En standby">En standby</option>
                  <option value="Annule">Annulé</option>
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
        
        <input class="form-control "  id="chantier" type="text" name="retard">
        </div>
             <div class="form-group" >
        <label for="inputNomMatiere">Date création</label>
        
        <input type="text" name="DateCreation" class="calendrier" />
        </div>
              <div class="form-group">
        <label for="inputNomMatiere">Date Cloture Planifiée</label>
        
        <input type="text" name="DateCloturePlanifie" class="calendrier" />
        </div>
        
        
              <div class="form-group">
        <label for="inputNomMatiere">Date Cloture Réelle</label>
        
        <input type="text" name="DateClotureReelle" class="calendrier" />
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
          <script src="vendor/jquery.ui.core.js" type="text/javascript" charset="utf-8"></script>
  <script src="vendor/jquery.ui.widget.js" type="text/javascript" charset="utf-8"></script>
  <script src="vendor/jquery.ui.position.js" type="text/javascript" charset="utf-8"></script>
  <script src="vendor/jquery.ui.menu.js" type="text/javascript" charset="utf-8"></script>
  <script src="vendor/jquery.ui.autocomplete.js" type="text/javascript" charset="utf-8"></script>
  <script src="vendor/underscore-1.5.2.js" type="text/javascript" charset="utf-8"></script>
  <script src="vendor/backbone-1.1.0.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/visualsearch.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/views/search_box.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/views/search_facet.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/views/search_input.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/models/search_facets.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/models/search_query.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/utils/backbone_extensions.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/utils/hotkeys.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/utils/jquery_extensions.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/utils/search_parser.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/utils/inflector.js" type="text/javascript" charset="utf-8"></script>
  <script src="lib/js/templates/templates.js" type="text/javascript" charset="utf-8"></script>
  <link rel="stylesheet" href="lib/css/reset.css" type="text/css" media="screen" charset="utf-8">
  <link rel="stylesheet" href="lib/css/icons.css" type="text/css" media="screen" charset="utf-8">
  <link rel="stylesheet" href="lib/css/workspace.css" type="text/css" media="screen" charset="utf-8">
  
	

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

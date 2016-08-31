

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <li><a href="/PMOITserv/utilisateurs"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg> Utilisateurs</a></li>
			
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
     <div class="col-md-12">
         
   
         <div class="row">
         
             <div class="col-lg-2">
                 <div><p data-placement="top" data-toggle="tooltip" ><button class="btn btn-info btn-sm" data-title="Ajouter" data-toggle="modal" data-target="#ajout"><span class="glyphicon glyphicon-plus-sign "></span></button></p></div>
             </div>
         </div>     
    
    
    
     
  
        <div class="table-responsive">
            
            <table id="mytable" class="js-dynamitable    table table-bordered">      
      <!-- table heading -->
      <thead>
            
          <tr class="hide-cols">
            
          <th class="hider">Demande de changement <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Statut <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Demandeur <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Priorité <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Date demande <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Date décision planifié <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Date décision réelle  <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          <th class="hider">Commentaires  <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
          
          </tr>
        <!-- Filtering
                        * js-filter => filter trigger (input, select)
                        -->
                        <tr class="b">
                            <th> <!-- input filter -->
            
            <input  class="js-filter  form-control" type="text" value="">
          </th>
          <th> <!-- select filter -->
            
      
<select name="statut" class="ui selection dropdown"  id="multi-select" >
    <option value="Tous" >Tous les status</option>
              <option value="A l'étude">A l'étude</option>
              <option value="En cours">En cours</option>
              <option value="Acceptée">Acceptée</option>
              <option value="Refusée">Refusée</option>
              <option value="Abandonnée">Abandonnée</option>
              <option value="Remplacée">Remplacée</option>

</select>  
      
          </th>    
              
           <th ><input class="js-filter  form-control" type="text" value=""></th>       
      
           
          <th> <!-- select filter -->
            
      
              <select name="priorite" class="ui selection dropdown" id="multi-select1" >
  
                  <option value="Tous" selected="">Tous les priorités</option>
              <option value="Faible">Faible</option>
              <option value="Moyenne">Moyenne</option>
              <option value="Haute">Haute</option>
              <option value="Critique">Critique</option>
            </select>
          </th>
          
      <script>
          $('#multi-select1').on('change', function() {
        var priorite=$(this).val();
        var prio=$.trim($(".prio").text()).match(/[A-Z]*[^A-Z]+/g)
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
          
<th ><input class="js-filter  form-control" type="text" value="" id="dateCreFilter"></th>
<th ><input class="js-filter  form-control" type="text" value="" id="datePlaFilter"></th>
<th ><input class="js-filter  form-control" type="text" value="" id="dateRlFilter"></th>
          <th ><input class="js-filter  form-control" type="text" value=""></th>
        
            </tr>
      </thead>
      
      <!-- table body -->
      <tbody class="tb">
          
            <c:forEach items="${changes}" var="change" >
						<tr>
                                                    <td id="tdTable" class="titre">${change.demandeLabel}</td>
							<td id="tdTable" class="stat">${change.demandeStatut}</td>
                                                        <td id="tdTable">${change.utilisateur.utilisateurNom}</td>
							<td id="tdTable" class="prio">${change.demandePriorite}</td>
							<td id="tdTable">${change.demandeDte}</td>
							<td id="tdTable">${change.demandeDecisPlan}</td>
							<td id="tdTable">${change.demandeDecisReal}</td>
                                                        <td id="tdTable" class="commentaire">${change.demandeComment}</td>
                                                        <td style="min-width: 0px" id="tdTable"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" id="modif" data-title="Edit" data-toggle="modal" data-target="#edit" data-id="${change.idDemande}"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                                        <td style="min-width: 0px" id="tdTable"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" data-id="${change.idDemande}" id="del"><span class="glyphicon glyphicon-trash"></span></button></p></td>
    
                                                        

							
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
             <form method="post" action="ajouterChangement">  
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Ajouter demande de changement</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
              <label for="inputNomMatiere">Demande</label>
              <input class="form-control" id="actionTitre" name="demande" type="text" autocomplete="true">
        </div>
        <div class="form-group">
              <label for="inputNomMatiere">Statut</label>
        
              <select class="form-control "  id="Statut" type="text" placeholder="Irshad" name="statut">
                  <option value="En cours" selected="selected">En cours</option>
                  <option value="A l'étude">A l'étude</option>
              <option value="Acceptée">Acceptée</option>
              <option value="Refusée">Refusée</option>
              <option value="Abandonnée">Abandonnée</option>
              <option value="Remplacée">Remplacée</option>
              </select>
      
        </div>
              
              <div class="form-group">
        <label for="inputNomMatiere">Demandeur</label>
        
        <select name="responsable" class="form-control">
										<c:forEach var="item" items="${responsables}">
											<option value="${item.idUtilisateur}">${item.utilisateurNom}
												${item.utilisateurPrenom}</option>
										</c:forEach>
									</select></div>
              
              
        <div class="form-group">
              <label for="inputNomMatiere">Priorité</label>
        
              <select class="form-control "  id="Statut" type="text" name="priorite">
                  <option value="Faible" selected="selected">Faible</option>
              <option value="Moyenne">Moyenne</option>
              <option value="Haute">Haute</option>
              <option value="Critique">Critique</option>
              </select>
      
        </div>
            
              <div class="form-group" >
        <label for="inputNomMatiere">Date de décision</label>
<input type="text" class="form-control " name="DateCreation" id="datepicker" />
        
        </div>
              <div class="form-group" >
        <label for="inputNomMatiere">Date de décision planifiée</label>
        
        <input type="text" class="form-control " name="DateCloturePlanifie" id="datepicker1" />
        </div>
        
        
              <div class="form-group">
        <label for="inputNomMatiere">Date de décision réelle</label>
        
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
        <h4 class="modal-title custom_align" id="Heading">Modifier demande de changement </h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
              <label for="inputNomMatiere">Demande</label>
              <input class="form-control" id="actionTitre" name="demande" type="text" autocomplete="true">
        </div>
        <div class="form-group">
              <label for="inputNomMatiere">Statut</label>
        
              <select class="form-control "  id="Statut" type="text" placeholder="Irshad" name="statut">
                  <option value="En cours" selected="selected">En cours</option>
                  <option value="A l'étude">A l'étude</option>
              <option value="Acceptée">Acceptée</option>
              <option value="Refusée">Refusée</option>
              <option value="Abandonnée">Abandonnée</option>
              <option value="Remplacée">Remplacée</option>
              </select>
      
        </div>
              
              <div class="form-group">
        <label for="inputNomMatiere">Demandeur</label>
        
        <select name="responsable" class="form-control">
										<c:forEach var="item" items="${responsables}">
											<option value="${item.idUtilisateur}">${item.utilisateurNom}
												${item.utilisateurPrenom}</option>
										</c:forEach>
									</select></div>
              
              
        <div class="form-group">
              <label for="inputNomMatiere">Priorité</label>
        
              <select class="form-control "  id="Statut" type="text" name="priorite">
                  <option value="Faible" selected="selected">Faible</option>
              <option value="Moyenne">Moyenne</option>
              <option value="Haute">Haute</option>
              <option value="Critique">Critique</option>
              </select>
      
        </div>
            
              <div class="form-group" >
        <label for="inputNomMatiere">Date de décision</label>
<input type="text" class="form-control " name="DateCreation" id="datepickermodif" />
        
        </div>
              <div class="form-group" >
        <label for="inputNomMatiere">Date de décision planifiée</label>
        
        <input type="text" class="form-control " name="DateCloturePlanifie" id="datepicker1modif" />
        </div>
        
        
              <div class="form-group">
        <label for="inputNomMatiere">Date de décision réelle</label>
        
        <input type="text" name="DateClotureReelle" class="form-control " id="datepicker2modif" />
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
        <h4 class="modal-title custom_align" id="Heading">Supprimer cette demande</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Voulez vous supprimer cette demande?</div>
       
      </div>
        <div class="modal-footer ">
            <button type="button" class="btn btn-success" id="suppression"><span class="glyphicon glyphicon-ok-sign"></span> Oui</button>
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
                            document.getElementById('updateModalForm').setAttribute("action", "updateChange/"+myAction);
});
        </script>
        
                
                <script>

        var myActionId;
        $(document).on("click", "#del", function () {
     myActionId = $(this).data('id');
     
});
        
    document.getElementById("suppression").onclick = function () {
        location.href = "deleteChange/"+myActionId;
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

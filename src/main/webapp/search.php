<?php
define('DB_SERVER', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', 'bechir');
define('DB_NAME', 'mydb');
$term = $_GET['term'];
   $conn = new PDO("mysql:host=".DB_SERVER.";port=3306;dbname=".DB_NAME, DB_USER, DB_PASSWORD);

   $stmt = $conn->prepare('SELECT * FROM action WHERE ActionTitre LIKE :term');
   $stmt->execute(array('term' => '%'.$_GET['term'].'%'));
        
   $array = array(); // on créé le tableau

while($donnee = $stmt->fetch()) // on effectue une boucle pour obtenir les données
{
    array_push($array, $donnee['ActionTitre']); // et on ajoute celles-ci à notre tableau
}

echo json_encode($array);

   
   
    
?>
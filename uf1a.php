<html>
	<head>
			<title>Umfrage Christian Marzian</title>
	</head>
	<body bgcolor="#cccccc">
		<?php
			include_once("db_funktionen.php");
			
			echo "Ergebnisse f&uuml;r:";
			echo $_POST['lehrer'];

			echo "</br>";
			$count =  getCountOfRecordsInTable("moeglicheMerkmale");

			for($i = 1;$i <= $count; $i++)
			{
				$wert = "eins".$i;
				if (isset($_POST["$wert"]) && !empty($_POST["$wert"])) 
				{
			    	echo $_POST["$wert"];//NotenID








				}
			}
		?>
	</body>
</html>
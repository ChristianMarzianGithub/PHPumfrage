<html>

<head>
	<title>Umfrage Christian Marzian</title>
</head>



<body bgcolor="#cccccc">
<?php

	// Includedatei einbinden
	include_once ("db_funktionen.php");

	echo "<h1>".$_POST['usr']."/UF eingeben</h1><hr>";
	db_connect();

	//SQL-Anweisung zusammenstellen
	$sql="Select * from umfrage.Lehrer;";
	$result = db_query($sql);
	echo"<form action='uf1a.php' method='post'>";
	echo "</br>Lehrer:";
	echo "<select name='lehrer'>";
	while($row=mysqli_fetch_row($result))
	{
		echo "<option>$row[1],$row[2] $row[3]</option>";	
	}
	echo "</select>";			

	echo "<hr>";
	db_connect();
	//SQL-Anweisung zusammenstellen
	$sql="Select * from umfrage.MoeglicheMerkmale;";
	$result1 = db_query($sql);
	$n = 1;

	while($row1=mysqli_fetch_row($result1))
	{	
		$nn = 1;
		echo"<fieldset>";			
		db_connect();

		//SQL-Anweisung zusammenstellen
		$sql="Select * from umfrage.MoeglicheNoten;";
		$result = db_query($sql);
		echo "<table border = '1'>";	

		//Noten-Werte	
		echo "<tr>";
		while($row=mysqli_fetch_row($result))
		{			
			echo "<td>";
				echo"$row[2]";
			echo "</td>";						
		}
		echo "</tr>";
		$result = db_query($sql);

		//Radio-Buttons
		echo "<tr>";	
		while($row=mysqli_fetch_row($result))
		{				
			echo "<td>";
			echo "<input type='radio' name='eins".$n."' value='".$n.";".$nn."'>";	//Merkmal-ID und Noten-Wert werden zusammen als Value eingetragen
			echo "</td>";	

			$nn = $nn + 1;					
		}		
		echo getValueOfColumn("MoeglicheMerkmale","id","Bezeichnung",$n);	//Bezeichnung des Merkmals ausgeben
		echo "</tr>";	

		echo "</table>";
		echo "</fieldset>";		
		$n = $n +1;
	}	
	echo "<input type='submit' name='uf1submit'>";
	echo "</form>";
?>
</body>
</html>
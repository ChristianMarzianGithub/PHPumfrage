<html>

<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<title>Umfrage Christian Marzian</title>

</head>



<body>
 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<?php

	// Includedatei einbinden
	include_once ("db_funktionen.php");

	echo "<h1>".$_POST['usr']."/UF eingeben</h1><hr>";
	setcookie("BenutzerBezeichnung",$_POST['usr'],time() + (8600*30),"/");
	db_connect();

	//SQL-Anweisung zusammenstellen
	$sql="Select * from umfrage.Lehrer;";
	$result = db_query($sql);
	echo"<form action='uf1a.php' method='post'>";
	echo "</br>Lehrer:";
	echo "<select name='lehrer'>";
	while($row=mysqli_fetch_row($result))
	{
		echo "<option value='$row[0]' >$row[1],$row[2] $row[3]</option>";	
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
			echo "<input type='radio' name='eins".$n."' value='$nn'>";	// Noten-Wert
			echo "</td>";	
			//BenutzerID; LehrerID; MerkmalID; NotenID; LerngruppeID
			$nn = $nn + 1;					
		}		
		echo getValueOfColumn("MoeglicheMerkmale","id","Bezeichnung",$n);	//Bezeichnung des Merkmals ausgeben
		echo "</tr>";	

		echo "</table>";
		echo "</fieldset>";		
		$n = $n +1;	
	}	
	
	echo "<hr>";
	echo "<label for='passwd'>Kennwort </label>";
    echo "<input type='password' name='passwd' id='passwd' size='30' maxlength='40' required></br>";
	echo "<input type='submit' name='uf1submit' value='Daten speichern'>";
	echo "<input type='reset' name='uf1submit' value='Daten zurücksetzen'>";
	echo "</form>";
?>
</body>
</html>
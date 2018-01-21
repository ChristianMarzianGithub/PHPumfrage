<html>

<head>

	<title>Umfrage Christian Marzian</title>

</head>



<body>

<!--<a href='uf1.php'>Umfrage eingeben</a><br> -->
<p>Mit welchem Benutzer soll die Bewertung abgegeben werden ?</p>

<?php
	// Includedatei einbinden
	include_once ("db_funktionen.php");
	db_connect();
	//SQL-Anweisung zusammenstellen
	$sql="Select * from umfrage.Benutzer;";
	$result = db_query($sql);	

	echo"<form action='uf1.php' method='post'>";
		echo "<select name='usr'>";
		while($row=mysqli_fetch_row($result))
		{
			echo "<option >$row[1]</option>";			
		}
	echo "</select>";		
	echo"<input type='submit'name='ok' value='Umfrage eingeben'>";
	echo"</form>";	
?>
</body>
</html>
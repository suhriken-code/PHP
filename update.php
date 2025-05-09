<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>update</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<?php

    $id= $_POST['id'];
    $voornaam ="";
    $achternaam ="";
    $geboortedatum = "";
    $foto_url = "";

    require_once "dbconnection.php";

    $sql = "SELECT foto_url, voornaam, achternaam, geboortedatum, id FROM voetballers WHERE id = '$id'";
    $result = $conn->query($sql);
    
    if ($result->num_rows == 1) 
    {
       $row = $result->fetch_assoc();

       $voornaam = $row["voornaam"] ;
       $achternaam =$row["achternaam"] ;
       $geboortedatum = $row ["geboortedatum"] ;
       $foto_url = $row["foto_url"] ;
    }  
  


?>



<form method="POST" action="aanpassen.php">
    <input type="hidden" name="id" value="<?php echo $id; ?>">
    <label>Voornaam:</label>
    <input type="text" name="voornaam" value="<?php echo $voornaam; ?>" required>
    
    <label>Achternaam:</label>
    <input type="text" name="achternaam" value="<?php echo $achternaam; ?>" required>
    
    <label>Geboortedatum:</label>
    <input type="date" name="geboortedatum" value="<?php echo $geboortedatum; ?>" required>
    
    <label>Foto URL:</label>
    <input type="text" name="foto_url" value="<?php echo $foto_url; ?>" required>

    <button type="submit" name="submit">Opslaan</button>
</form>
</body>
</html>
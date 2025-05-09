<?php
require_once "dbconnection.php";

if (isset($_POST['submit'])) {
    $id = $_POST['id'];
    $voornaam = mysqli_real_escape_string($conn, $_POST['voornaam']);
    $achternaam = mysqli_real_escape_string($conn, $_POST['achternaam']);
    $geboortedatum = mysqli_real_escape_string($conn, $_POST['geboortedatum']);
    $foto_url = mysqli_real_escape_string($conn, $_POST['foto_url']);

    // Controleer of het ID geldig is
    if (!empty($id) && is_numeric($id)) {
        $sql = "UPDATE voetballers SET 
                voornaam='$voornaam', 
                achternaam='$achternaam', 
                geboortedatum='$geboortedatum', 
                foto_url='$foto_url' 
                WHERE id=$id";

        if ($conn->query($sql) === TRUE) {
            header("Location: index.php");
            exit();
        } else {
            echo "Fout bij bijwerken: " . $conn->error;
        }
    } else {
        echo "Ongeldig ID";
    }
} else {
    echo "Formulier niet verzonden.";
}
?>

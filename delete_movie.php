<?php

require 'assets/inc/header.php';
if (isset($_SESSION['email']) && '1' == $_SESSION['role']) {
    $id = $_GET['id'];

    $sth = $db->prepare("DELETE FROM movie WHERE id = {$id}");
    $sth->bindValue(':id', $id, PDO::PARAM_INT);
    $sth->execute();

    header('Location:admin.php');
} else {
    ?>
    <div class="diverreur">
        <p class="perreur">veuillez vous connecter pour avoir accés a cette page</p>
        <a href="admin.php" type="submit" class="inputbtn retour">Retour</a>
    </div>
  <?php
}
require 'assets/inc/footer.php';
?> 
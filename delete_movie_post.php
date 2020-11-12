<?php

require 'assets/inc/header.php';

if (isset($_POST['oui'])) {
    $id = $_POST['id'];
    $sth = $db->prepare("DELETE FROM movie WHERE id = {$id}");
    $sth->bindValue(':id', $id, PDO::PARAM_INT);
    $sth->execute(); ?>

    <div class="diverreur">
        <p class="perreur">Film supprimé</p>
        <a href="admin.php" type="submit" class="inputbtn retour">Retour</a>
    </div>
<?php
} else {
        ?>
    <div class="diverreur">
        <p class="perreur">veuillez vous connecter pour avoir accés a cette page</p>
        <a href="index.php" type="submit" class="inputbtn retour">Retour</a>
    </div>
  <?php
    }

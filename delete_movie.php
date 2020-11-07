<?php

require 'assets/inc/connect.php';
require 'assets/inc/head.php';
require 'assets/inc/function.php';
if (isset($_SESSION['email']) && '1' == $_SESSION['role']) {
    $id = $_GET['id']; ?>
    <div class="diverreur">
        <p class="perreur">Êtes-vous sur de vouloir supprimer ce film</p>
<form action="delete_movie.php"method="POST">
        <input type="hidden" name="id" class="inputbtn retour"value="<?php echo $id; ?>">
        <input type="submit" name="oui" class="inputbtn retour"value="Oui">
        <a href="admin.php" type="submit" class="inputbtn retour">Non</a>
        </form>
    </div>
    <?php

if (isset($_POST['oui'])) {
    $id = $_POST['id'];
    $sth = $db->prepare("DELETE FROM movie WHERE id = {$id}");
    $sth->bindValue(':id', $id, PDO::PARAM_INT);
    $sth->execute();

    header('Location:admin.php');
}
} else {
    ?>
    <div class="diverreur">
        <p class="perreur">veuillez vous connecter pour avoir accés a cette page</p>
        <a href="index.php" type="submit" class="inputbtn retour">Retour</a>
    </div>
  <?php
}
require 'assets/inc/footer.php';
?> 
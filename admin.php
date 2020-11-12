<?php
require 'assets/inc/header.php';
if (isset($_POST['submit-login'])) {
    $user_email = htmlspecialchars($_POST['user_email']);
    $user_pass = htmlspecialchars($_POST['user_password']);
    $sql = $db->query("SELECT * FROM user WHERE email = '{$user_email}'");

    if ($row = $sql->fetch()) {
        $db_id = $row['id'];
        $db_email = $row['email'];
        $db_pass = $row['mdp'];
        $db_role = $row['role'];
        if (password_verify($user_pass, $db_pass)) {
            $_SESSION['id'] = $db_id;
            $_SESSION['email'] = $db_email;
            $_SESSION['role'] = $db_role;
        } else {
            // si mdp inconnu
            ?> 
            <div> Mot de passe incorrect.</div>
        <?php
        }
    } else {
        // si mail inconnu
        ?>
        <div> Identifiant inconnu.</div>
<?php
    }
}

if (isset($_SESSION['email']) && '1' == $_SESSION['role']) {
    ?>
    <div class="div1admin">
        <a class="aadmin" href="ajoutfilm.php"><i class="fas fa-film buttadmin"></i></a>
        <a class="aadmin" href="?logout" class="linkadmin"><i class="fas fa-times-circle buttadmin"></i></a>
    </div>
    <div class="divform1">
        <form class="search" method="POST" action=""> 
            <label for="search" class="search-label">Chercher un film</label>
    <div class="divform2">
            <input type="text" name="recherche" placeholder="Titre du film" class="search1">
            <input name="search" type="SUBMIT" value="Search!"  class="search2"> 
    </div>
    </form>
    </div>

<?php
    searchmovie();
} else {
    ?>

<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST" class="formcon"> 
    <input class="formheadconnect" type="text" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Mail">
    <input class="formheadconnect2" type="password" name="user_password" class="form-control" id="exampleInputPassword1" placeholder="Mot de passe">
    <button type="submit" name="submit-login" class="btnconnecthead">Connexion</button>
</div>
<?php
} ?>































<?php
require 'assets/inc/footer.php';

?>

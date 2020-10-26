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
<a href="ajoutfilm.php">Ajouter un film</a>
<a href="?logout" class="linkadmin">Se déconnecter</a>


<?php
displayallmovie();
} else {
    ?>



<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST" class="formcon"> 
    <input class="formheadconnect" type="text" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Entrez votre mail...">
    <input class="formheadconnect2" type="password" name="user_password" class="form-control" id="exampleInputPassword1" placeholder="Entrez votre mot de passe...">
    <button type="submit" name="submit-login" class="btnconnecthead">Connexion</button>
</div>
<?php
} ?>































<?php
require 'assets/inc/footer.php';

?>

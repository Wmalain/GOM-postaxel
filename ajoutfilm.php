<?php
require 'assets/inc/header.php';

if (isset($_SESSION['email']) && '1' == $_SESSION['role']) {
    if (isset($_POST['submit-signup'])) {
        $titre = htmlspecialchars($_POST['titre']);
        $realisateur = htmlspecialchars($_POST['real']);
        $synopsis = htmlspecialchars($_POST['synopsis']);
        $photo = $_FILES['photo'];
        $lien = htmlspecialchars($_POST['lien']);
        $id_genre = htmlspecialchars($_POST['genre']);
        $id_age = htmlspecialchars($_POST['age']);
        $id_type1 = htmlspecialchars($_POST['ee1']);
        $id_date = htmlspecialchars($_POST['decenie']);

        if ($photo['size'] <= 9000000) {
            // vérification pour la photo, poid et format
            $valid_ext = ['jpg', 'jpeg', 'gif', 'png', 'webp'];
            $check_ext = strtolower(substr(strrchr($photo['name'], '.'), 1));

            if (in_array($check_ext, $valid_ext)) {
                // dossier d'upload de la photo et nom définitif de cette derniere
                $imgname = uniqid().'_'.$photo['name'];
                $upload_dir = './assets/uploads/';
                $upload_name = $upload_dir.$imgname;
                $move_result = move_uploaded_file($photo['tmp_name'], $upload_name);

                if ($move_result) {
                    // si la photo est uploadé alors ajoute les informations dans la table movie

                    $sth = $db->prepare('INSERT INTO movie(titre, realisateur, synopsis, lien, affiche, id_genre, id_age, id_type1, id_date) VALUES (:titre,:realisateur, :synopsis, :lien, :photo, :id_genre, :id_age, :id_type1, :id_date)');
                    $sth->bindValue(':titre', $titre);
                    $sth->bindValue(':realisateur', $realisateur);
                    $sth->bindValue(':synopsis', $synopsis);
                    $sth->bindValue(':lien', $lien);
                    $sth->bindValue(':photo', $imgname);
                    $sth->bindValue(':id_genre', $id_genre);
                    $sth->bindValue(':id_age', $id_age);
                    $sth->bindValue(':id_type1', $id_type1);
                    $sth->bindValue(':id_date', $id_date);

                    $sth->execute();
                } else {
                    ?>
                    <div class="diverreur">
                        <p class="perreur">une erreur c'est produite</p>
                        <a href="index.php" type="submit" class="inputbtn retour">Retour</a>
                    </div>
                  <?php
                }
            }
        } else {
            ?>
    <div class="diverreur">
        <p class="perreur">Image trop lourde ou d'un mauvais format !</p>
        <a href="ajoutfilm.php" type="submit" class="inputbtn retour">Retour</a>
    </div>
  <?php
        }
    } ?>

<form action="ajoutfilm.php" method="post" enctype="multipart/form-data" class="form">
    <h1 class="h1form">Ajouter un Film</h1>
    <div class="formfilm" >
        <input type="text" name="titre" id="titre" value="" placeholder="titre" class="inputform1" required>
    </div>
    <div>
        <input type="text" class="inputform" name="real" id="real" value="" placeholder="réalisateur"  required>
        <select id="genre" placeholder="genre" name="genre" class="inputform" required>
            <option value="">--Genre--</option>
            <option value="1">Drame</option> 
            <option value="2">Policier / Thriller</option>
            <option value="3">Comédie / Comédie romantique</option>
            <option value="4">Horreur</option>
            <option value="5">Science Fiction</option>
            <option value="6">Fantastique</option>
            <option value="7">Action / Aventure</option>
            <option value="8">Guerre / Western</option>
            <option value="9">Animé</option>
            <option value="10">Peplum / Cape et épée</option>
            <option value="11">Historique</option>
            <option value="12">Documentaire</option>
            <option value="13">Autres</option>
        </select>
    </div>

    <div>
        <select id="decenie" name="decenie" class="inputform" placeholder="décénie" required>
            <option value="">--décénie--</option>
            <option value="1">90</option>
            <option value="2">80</option>
            <option value="3">70</option>
            <option value="4">60</option>
            <option value="5">50</option>
            <option value="6">40</option>
            <option value="7">30</option>
            <option value="8">20 et -</option>
        </select>
        <select id="age" name="age" class="inputform" placeholder="Age" required>
            <option value="">--Age--</option>
            <option value="1">Tous publique</option>
            <option value="2">Ado</option>
            <option value="3">Adulte</option>
        </select>
    </div>

    <div>
        <select id="eesprit1" name="ee1" class="inputform" placeholder="état d'esprit" required>
            <option value="">--état d'esprit--</option>
            <option value="1">feel good movie</option>
            <option value="2">Film choc</option>
            <option value="3">Film a grand spectacle</option>
            <option value="4">Film éducatif</option>
            <option value="5">Film triste</option>
            <option value="6">frisson</option>
            <option value="7">nanar</option>
            <option value="8">Aucun</option>
        </select>
        <input type="text" name="lien" class="inputform" id="lien" value="" placeholder="Lien IMDB" required>
    </div>
    <div>
        <textarea id="synopsis" name="synopsis" class="inputform2" placeholder="Synopsis"
            rows="5" cols="33" required></textarea>
    </div>
    <div>
        <input type="file" name="photo" id="photo" class="inputform2" accept=".png,.jpeg,.jpg,.gif" required>
    </div>
    <input type="submit" name="submit-signup" class="inputbtn" value="Ajouter">

</form>
<div class="retourgen">
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

require 'assets/inc/footer.php';
?> 
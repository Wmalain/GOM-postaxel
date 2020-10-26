<?php
require 'assets/inc/header.php';

if (isset($_POST['submit-signup'])) {
    $titre = htmlspecialchars($_POST['titre']);
    $realisateur = htmlspecialchars($_POST['real']);
    $synopsis = htmlspecialchars($_POST['synopsis']);
    $photo = $_FILES['photo'];
    var_dump($photo);
    $lien = htmlspecialchars($_POST['lien']);
    $id_genre = htmlspecialchars($_POST['genre']);
    $id_age = htmlspecialchars($_POST['age']);
    $id_type1 = htmlspecialchars($_POST['ee1']);
    $id_date = htmlspecialchars($_POST['decenie']);

    if ($photo['size'] <= 1000000) {
        // vérification pour la photo, poid et format
        $valid_ext = ['jpg', 'jpeg', 'gif', 'png'];
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
                header('Location:ajoutfilm.php');
            }
        }
    }
}
?>

<form action="ajoutfilm.php" method="post" enctype="multipart/form-data">

<div class="formfilm" >
    <input type="text" name="titre" id="titre" value="" placeholder="titre" required>
</div>

<div>
    <input type="text" name="real" id="real" value="" placeholder="réalisateur" required>
    <select id="genre" placeholder="genre" name="genre">
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
    <select id="decenie" name="decenie" placeholder="décénie">
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
    <select id="age" name="age" placeholder="Age">
        <option value="">--Age--</option>
        <option value="1">Tous publique</option>
        <option value="2">Ado</option>
        <option value="3">Adulte</option>
       
    </select>
</div>

<div>
    <select id="eesprit1" name="ee1" placeholder="état d'esprit">
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
    
</div>
<div>
    
    <input type="text" name="lien" id="lien" value="" placeholder="lien IMDB" required>

</div>
<div>
    <textarea id="synopsis" name="synopsis"
          rows="5" cols="33">
          synopsis
    </textarea>
</div>
<div>
    <input type="file" name="photo" id="photo" accept=".png,.jpeg,.jpg,.gif">
</div>
<input type="submit" name="submit-signup" value="Envoyer le formulaire">

</form>















<?php
require 'assets/inc/footer.php';

?> 
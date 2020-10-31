<?php
require 'assets/inc/header.php';

$id = $_GET['id'];

$sql = $db->query("SELECT * FROM movie LEFT JOIN age ON movie.id_age = age.id LEFT JOIN date ON movie.id_date = date.id LEFT JOIN genre_de_film ON movie.id_genre = genre_de_film.id LEFT JOIN type_de_film ON movie.id_type1 = type_de_film.id  WHERE movie.id = {$id}");
$mov = $sql->fetch();
?>


<form action="modify_movie_post.php" method="post" enctype="multipart/form-data" class="form">

<h1 class="h1form">Modifier un Film</h1>
<div class="formfilm" >
    <input type="text" name="titre" id="titre" value="<?php echo $mov['titre']; ?>" placeholder="titre" class="inputform1" required>
</div>

<div>
    <input type="text" class="inputform" name="real" id="real" value="<?php echo $mov['realisateur']; ?>" placeholder="réalisateur"  required>
    <select id="genre" placeholder="genre" name="genre" class="inputform">
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
    <select id="decenie" name="decenie" class="inputform" placeholder="décénie">
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
    <select id="age" name="age" class="inputform" placeholder="Age">
        <option value="">--Age--</option>
        <option value="1">Tous publique</option>
        <option value="2">Ado</option>
        <option value="3">Adulte</option>
       
    </select>
</div>

<div>
    <select id="eesprit1" name="ee1" class="inputform" placeholder="état d'esprit">
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
    <input type="text" name="lien" class="inputform" id="lien" value="<?php echo $mov['lien']; ?>" placeholder="Lien IMDB" required>

</div>
<div>
    <textarea id="synopsis" name="synopsis" class="inputform2" placeholder="Synopsis"
          rows="5" cols="33"><?php echo $mov['synopsis']; ?></textarea>
</div>
<div>
    <input type="file" name="photo" id="photo" class="inputform2" accept=".png,.jpeg,.jpg,.gif">
</div>
<input type="hidden" name="id" class="inputbtn" value="<?php echo $id; ?> ">
<input type="submit" name="btnmodify" class="inputbtn" value="Modifier le film">
</form>











<?php
require 'assets/inc/footer.php';

?> 
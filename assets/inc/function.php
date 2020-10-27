<?php

function displaymovie()
{
    global $db;

    // $sql = $db->query('SELECT * FROM movie order by RAND() limit 0,1');
    $sql = $db->query('SELECT * FROM movie LEFT JOIN age ON movie.id_age = age.id LEFT JOIN date ON movie.id_date = date.id LEFT JOIN genre_de_film ON movie.id_genre = genre_de_film.id LEFT JOIN type_de_film ON movie.id_type1 = type_de_film.id order by RAND() limit 0,1');
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    while ($row = $sql->fetch()) {
        ?>
            <div class="">
                <div class="vinafficheall">
                    <p><?php echo $row['titre']; ?></p>
                    <p><?php echo $row['realisateur']; ?></p>
                    <p><?php echo $row['synopsis']; ?></p>
                    <p><?php echo $row['genre']; ?></p>
                    <p><?php echo $row['lien']; ?></p>
                    <p><?php echo $row['type']; ?></p>
                    <p><?php echo $row['age']; ?></p>
                    <p><?php echo $row['decennie']; ?></p>
                    <img src="assets/uploads/<?php echo $row['affiche']; ?>" alt="affiche">

                </div>
            </div>
        <?php
    }
}

function displaymoviegenre($id)
{
    global $db;
    $sql = $db->query("SELECT * FROM movie LEFT JOIN age ON movie.id_age = age.id LEFT JOIN date ON movie.id_date = date.id LEFT JOIN genre_de_film ON movie.id_genre = genre_de_film.id LEFT JOIN type_de_film ON movie.id_type1 = type_de_film.id   WHERE id_genre = {$id} order by RAND() limit 0,1");
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    while ($row = $sql->fetch()) {
        ?>
           <div class="">
                <div class="vinafficheall">
                    <p><?php echo $row['titre']; ?></p>
                    <p><?php echo $row['realisateur']; ?></p>
                    <p><?php echo $row['synopsis']; ?></p>
                    <p><?php echo $row['genre']; ?></p>
                    <p><?php echo $row['lien']; ?></p>
                    <p><?php echo $row['type']; ?></p>
                    <p><?php echo $row['age']; ?></p>
                    <p><?php echo $row['decennie']; ?></p>
                    <img src="assets/uploads/<?php echo $row['affiche']; ?>" alt="affiche">

                </div>
            </div>
        <?php
    }
}

function displaymovieenvie($id)
{
    global $db;
    $sql = $db->query("SELECT * FROM movie LEFT JOIN age ON movie.id_age = age.id LEFT JOIN date ON movie.id_date = date.id LEFT JOIN genre_de_film ON movie.id_genre = genre_de_film.id LEFT JOIN type_de_film ON movie.id_type1 = type_de_film.id   WHERE movie.id_type1 = {$id} order by RAND() limit 0,1");
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    while ($row = $sql->fetch()) {
        ?>
           <div class="">
                <div class="vinafficheall">
                    <p><?php echo $row['titre']; ?></p>
                    <p><?php echo $row['realisateur']; ?></p>
                    <p><?php echo $row['synopsis']; ?></p>
                    <p><?php echo $row['genre']; ?></p>
                    <p><?php echo $row['lien']; ?></p>
                    <p><?php echo $row['type']; ?></p>
                    <p><?php echo $row['age']; ?></p>
                    <p><?php echo $row['decennie']; ?></p>
                    <img src="assets/uploads/<?php echo $row['affiche']; ?>" alt="affiche">

                </div>
            </div>
        <?php
    }
}

function displaymovieage($id)
{
    global $db;
    $sql = $db->query("SELECT * FROM movie LEFT JOIN age ON movie.id_age = age.id LEFT JOIN date ON movie.id_date = date.id LEFT JOIN genre_de_film ON movie.id_genre = genre_de_film.id LEFT JOIN type_de_film ON movie.id_type1 = type_de_film.id  WHERE age.id = {$id} order by RAND() limit 0,1");
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    while ($row = $sql->fetch()) {
        ?>
           <div class="">
                <div class="vinafficheall">
                    <p><?php echo $row['titre']; ?></p>
                    <p><?php echo $row['realisateur']; ?></p>
                    <p><?php echo $row['synopsis']; ?></p>
                    <p><?php echo $row['genre']; ?></p>
                    <p><?php echo $row['lien']; ?></p>
                    <p><?php echo $row['type']; ?></p>
                    <p><?php echo $row['age']; ?></p>
                    <p><?php echo $row['decennie']; ?></p>
                    <img src="assets/uploads/<?php echo $row['affiche']; ?>" alt="affiche">

                </div>
            </div>
        <?php
    }
}

function searchmovie()
{
    // Ouvre une connexion au serveur MySQL
    if (isset($_POST['search'])) {
        global $db;

        // $conn = mysqli_connect('localhost', 'root', '', 'gom');

        $recherche = $_POST['recherche'];

        $sql = $db->query("SELECT * FROM movie WHERE titre LIKE '%".$recherche."%'");
        $sql->setFetchMode(PDO::FETCH_ASSOC);
        if ($sql->execute()) {
            while ($row = $sql->fetch()) {
                ?>

</br>
            <tr>
                <td><?php echo $row['titre']; ?></td> 
                <td><?php echo $row['realisateur']; ?></td>
                <td><a href="modify_movie.php?id=<?php echo $row['id']; ?> "><i class="fas fa-video"></i></a>
</td>
                <td><a href="delete_movie.php?id=<?php echo $row['id']; ?> "><i class="fas fa-trash-alt"></i></a>
</td></br>
            </tr>
           
        </div>
            </div>
    <?php
            }
        }
    }
}?>

<?php

function displaymovie()
{
    global $db;

    // $sql = $db->query('SELECT * FROM movie order by RAND() limit 0,1');
    $sql = $db->query('SELECT * FROM movie LEFT JOIN age ON movie.id_age = age.id LEFT JOIN date ON movie.id_date = date.id LEFT JOIN genre_de_film ON movie.id_genre = genre_de_film.id LEFT JOIN type_de_film ON movie.id_type1 = type_de_film.id order by RAND() limit 0,1');
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    while ($row = $sql->fetch()) {
        ?>
        <div class="divtit"> 
          <h1 class="h1film"> Quel film voir ce soir ?</h1>
          <p class="pfunc">Film choisi au <strong> hasard </strong> dans une base de données</p>
        </div>
        <div class="movie-card">
        <div class="poster-wrapper">
          <div class="poster">
          <img class="affiche" src="assets/uploads/<?php echo $row['affiche']; ?>" alt="affiche">
          </div>
        </div>
        <!-- end poster-wrapper -->
        <div class="movie-info">
          <div class="header-section">
            <h1 class="titrefilm"><?php echo $row['titre']; ?></h1>
            <p><?php echo $row['realisateur']; ?> </p>
            <p class="pdec"><?php echo $row['decennie']; ?> </p>
            <strong><p><?php echo $row['genre']; ?></p></strong>
            <strong><p><?php echo $row['type']; ?></p></strong>
            <strong><p><?php echo $row['age']; ?></p></strong>
          </div>
        
          <div class="synopsis-section">
            <h2>SYNOPSIS</h2>
            <p class="synop">
            <?php echo $row['synopsis']; ?>
            </p>
          </div>
          <div class="btn">
            <a href="<?php echo $row['lien']; ?>" class="btnimdb" TARGET="_BLANK">IMDB</a>
            <button id="refresh" onclick="document.location.reload(false)" class="btnreload"> Regénérer </button>
          </div>

        </div>
        
      </div>
     
      <!-- end movie-card -->
   
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
        <div class="divtit"> 
          <h1 class="h1film"> Quel film voir ce soir ?</h1>
          <p class="pfunc">Film choisi au <strong> hasard </strong> dans une base de données <strong>selon son genre</strong></p>
          <p class="pfunc2"><?php echo $row['genre']; ?></p>
        </div>
   <div class="movie-card">
        <div class="poster-wrapper">
          <div class="poster">
          <img class="affiche" src="assets/uploads/<?php echo $row['affiche']; ?>" alt="affiche">
          </div>
        </div>
        <!-- end poster-wrapper -->
        <div class="movie-info">
          <div class="header-section">
            <h1 class="titrefilm"><?php echo $row['titre']; ?></h1>
            <p><?php echo $row['realisateur']; ?> </p>
            <p class="pdec"><?php echo $row['decennie']; ?> </p>
            <strong><p><?php echo $row['genre']; ?></p></strong>
            <p><?php echo $row['type']; ?></p>
            <p><?php echo $row['age']; ?></p>
          </div>
        
          <div class="synopsis-section">
            <h2>SYNOPSIS</h2>
            <p class="synop">
            <?php echo $row['synopsis']; ?>
            </p>
          </div>
          <div class="btn">
            <a href="<?php echo $row['lien']; ?>" class="btnimdb" TARGET="_BLANK">IMDB</a>
            <button id="refresh" onclick="document.location.reload(false)" class="btnreload"> Regénérer </button>
          </div>
          
        </div>

      </div>
      
      <!-- end movie-card -->

   
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
        <div class="divtit"> 
          <h1 class="h1film"> Quel film voir ce soir ?</h1>
          <p class="pfunc">Film choisi au <strong> hasard </strong> dans une base de données <strong> selon vos envies</strong></p>
          <p class="pfunc2"><?php echo $row['type']; ?></p>
        </div>
 <div class="movie-card">
        <div class="poster-wrapper">
          <div class="poster">
          <img class="affiche" src="assets/uploads/<?php echo $row['affiche']; ?>" alt="affiche">
          </div>
        </div>
        <!-- end poster-wrapper -->
        <div class="movie-info">
          <div class="header-section">
            <h1 class="titrefilm"><?php echo $row['titre']; ?></h1>
            <p><?php echo $row['realisateur']; ?> </p>
            <p class="pdec"><?php echo $row['decennie']; ?> </p>
            <p><?php echo $row['genre']; ?></p>
            <strong><p><?php echo $row['type']; ?></p></strong>
            <p><?php echo $row['age']; ?></p>
          </div>
        
          <div class="synopsis-section">
            <h2>SYNOPSIS</h2>
            <p class="synop">
            <?php echo $row['synopsis']; ?>
            </p>
          </div>
          <div class="btn">
            <a href="<?php echo $row['lien']; ?>" class="btnimdb" TARGET="_BLANK">IMDB</a>
            <button id="refresh" onclick="document.location.reload(false)" class="btnreload"> Regénérer </button>
          </div>

        </div>
        
      </div>
     
      <!-- end movie-card -->
   
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
        <div class="divtit"> 
          <h1 class="h1film"> Quel film voir ce soir ?</h1>
          <p class="pfunc">Film choisi au <strong> hasard </strong> dans une base de données <strong> selon votre age</strong></p>
          <p class="pfunc2"><?php echo $row['age']; ?></p>
        </div>
<div class="movie-card">
        <div class="poster-wrapper">
          <div class="poster">
          <img class="affiche" src="assets/uploads/<?php echo $row['affiche']; ?>" alt="affiche">
          </div>
        </div>
        <!-- end poster-wrapper -->
        <div class="movie-info">
          <div class="header-section">
            <h1 class="titrefilm"><?php echo $row['titre']; ?></h1>
            <p><?php echo $row['realisateur']; ?> </p>
            <p class="pdec"><?php echo $row['decennie']; ?> </p>
            <p><?php echo $row['genre']; ?></p>
            <p><?php echo $row['type']; ?></p>
            <strong><p><?php echo $row['age']; ?></p></strong>
          </div>
        
          <div class="synopsis-section">
            <h2>SYNOPSIS</h2>
            <p class="synop">
            <?php echo $row['synopsis']; ?>
            </p>
          </div>
          <div class="btn">
            <a href="<?php echo $row['lien']; ?>" class="btnimdb" TARGET="_BLANK">IMDB</a>
            <button id="refresh" onclick="document.location.reload(false)" class="btnreload"> Regénérer </button>
          </div>

        </div>
        
      </div>
     
      <!-- end movie-card -->
   
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
    <div class="tabl">
      <div class="tabgen">
        <p class="tabmov1"> <?php echo $row['titre']; ?> </p> 
        <p class="tabmov2"> <?php echo $row['realisateur']; ?> </p>
      </div>
        <div class="divico">
          <a class="btnad1" href="modify_movie.php?id=<?php echo $row['id']; ?> "><i class="fas fa-video"></i></a>
          <a class="btnad2" href="delete_movie.php?id=<?php echo $row['id']; ?> "><i class="fas fa-trash-alt"></i></a>
          </div>
        
    </div>
           
       
    <?php
            }
        }
    }
}?>

<?php
require 'assets/inc/connect.php';
require 'assets/inc/function.php';
require 'assets/inc/head.php';

?>

<header>
<div class="header1">
<img class="logo" src="./assets/img/logo.png" alt="logo">
</div>

<nav class="header2">
<ul class="nav2">
    <li> <a class="nav" href="index.php">Sans Filtre</a> </li>

    <li> <div class="dropdown">
        <button class="dropbtn">Par Genre</button>
            <div class="dropdown-content">
                <a href="genre.php?genre=1">Drame</a>
                <a href="genre.php?genre=2">Policier / Thriller</a>
                <a href="genre.php?genre=3">Comédie</a>
                <a href="genre.php?genre=4">Horreur</a>
                <a href="genre.php?genre=5">Science Fiction</a>
                <a href="genre.php?genre=6">Fantastique</a>
                <a href="genre.php?genre=7">Action / Aventure</a>
                <a href="genre.php?genre=8">Guerre / Western</a>
                <a href="genre.php?genre=9">Animé</a>
                <a href="genre.php?genre=10">Peplum / Cape et épée</a>
                <a href="genre.php?genre=11">Historique</a>
                <a href="genre.php?genre=12">Documentaire</a>
                <a href="genre.php?genre=13">Autres</a>
                
            </div>
    </div></li>
    <li> <div class="dropdown">
        <button class="dropbtn">Par Envie</button>
            <div class="dropdown-content">
                <a href="envie.php?envie=1">feel good movie</a>
                <a href="envie.php?envie=4">Film choc</a>
                <a href="envie.php?envie=3">Film a grand spectacle</a>
                <a href="envie.php?envie=4">Film éducatif</a>
                <a href="envie.php?envie=5">Film triste</a>
                <a href="envie.php?envie=6">frisson</a>
                <a href="envie.php?envie=7">nanar</a>
            </div>
    </div></li>
    <li> <div class="dropdown">
        <button class="dropbtn">Par Age</button>
            <div class="dropdown-content">
                <a href="age.php?age=1">Tous publique</a>
                <a href="age.php?age=2">Ado</a>
                <a href="age.php?age=3">Adulte</a>
            </div>
    </div></li>
    
</ul>

</nav>


</header>
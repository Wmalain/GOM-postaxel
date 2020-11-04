<?php
require 'assets/inc/connect.php';
require 'assets/inc/head.php';
require 'assets/inc/function.php';
?>

<header>
<div class="header1">
<a href="index.php"><img class="logo" src="./assets/img/logo.png" alt="logo"></a>
</div>

<nav class="header2">
    
<div class="nav">
  <input type="checkbox" id="nav-check">
  <div class="nav-header">
  </div>
  <div class="nav-btn">
    <label for="nav-check">
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
  
  <div class="nav-links">
      <div class="respmenu">
  <li> <a class="navfiltre respmenu" href="no_filtre.php">Sans Filtre</a> </li>
    </div>
<li> <div class="dropdown respmenu">
    <a class="dropbtn">Par Genre</a>
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
<li> <div class="dropdown respmenu">
    <a class="dropbtn">Par Envie</a>
        <div class="dropdown-content">
            <a href="envie.php?envie=1">Feel good movie</a>
            <a href="envie.php?envie=2">Film choc</a>
            <a href="envie.php?envie=3">Film a grand spectacle</a>
            <a href="envie.php?envie=4">Film éducatif</a>
            <a href="envie.php?envie=5">Film triste</a>
            <a href="envie.php?envie=6">Frisson</a>
            <a href="envie.php?envie=7">Nanar</a>
        </div>
</div></li>
<li> <div class="dropdown respmenu">
    <a class="dropbtn">Par Age</a>
        <div class="dropdown-content">
            <a href="age.php?age=1">Tous publique</a>
            <a href="age.php?age=2">Ado</a>
            <a href="age.php?age=3">Adulte</a>
        </div>
</div></li>
  </div>
</div>



<ul class="nav2">
    <div class="navfiltre1">
        <li> <a class="navfiltre" href="no_filtre.php">Sans Filtre</a> </li>
    </div>

    <li> <div class="dropdown">
        <a class="dropbtn">Par Genre</a>
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
        <a class="dropbtn">Par Envie</a>
            <div class="dropdown-content">
                <a href="envie.php?envie=1">Feel good movie</a>
                <a href="envie.php?envie=2">Film choc</a>
                <a href="envie.php?envie=3">Film a grand spectacle</a>
                <a href="envie.php?envie=4">Film éducatif</a>
                <a href="envie.php?envie=5">Film triste</a>
                <a href="envie.php?envie=6">Frisson</a>
                <a href="envie.php?envie=7">Nanar</a>
            </div>
    </div></li>
    <li> <div class="dropdown">
        <a class="dropbtn">Par Age</a>
            <div class="dropdown-content">
                <a href="age.php?age=1">Tous publique</a>
                <a href="age.php?age=2">Ado</a>
                <a href="age.php?age=3">Adulte</a>
            </div>
    </div></li>
    
</ul>

</nav>




</header>
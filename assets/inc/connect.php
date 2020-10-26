<?php

    session_start();
//    fin de session pour déconnexion
     if (isset($_GET['logout'])) {
         session_destroy();
         header('Location:index.php');
     }
    // connexion a la bdd
    $servername = 'localhost'; $dbname = 'gom'; $user = 'root'; $pass = '';

    try {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $pdo_options[PDO::MYSQL_ATTR_INIT_COMMAND] = 'SET NAMES utf8';
        $db = new PDO(
            "mysql:host={$servername};dbname={$dbname}",
            $user,
            $pass,
            $pdo_options
        );
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (Exception $ex) {
        echo 'Error : '.$ex->getMessage();
    }

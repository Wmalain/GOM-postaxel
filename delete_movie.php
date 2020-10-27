<?php

require 'assets/inc/header.php';

$id = $_GET['id'];

$sth = $db->prepare("DELETE FROM movie WHERE id = {$id}");
    $sth->bindValue(':id', $id, PDO::PARAM_INT);
    $sth->execute();

    header('Location:admin.php');

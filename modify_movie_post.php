<?php

require 'assets/inc/header.php';

if (isset($_POST['btnmodify'])) {
    $id = $_POST['id'];
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
        $valid_ext = ['jpg', 'jpeg', 'gif', 'png', 'webp'];
        $check_ext = strtolower(substr(strrchr($photo['name'], '.'), 1));

        if (in_array($check_ext, $valid_ext)) {
            $imgname = uniqid().'_'.$photo['name'];
            $upload_dir = './assets/uploads/';
            $upload_name = $upload_dir.$imgname;
            $move_result = move_uploaded_file($photo['tmp_name'], $upload_name);

            if ($move_result) {
                $sth = $db->prepare("UPDATE movie SET titre=:titre,realisateur=:realisateur,synopsis=:synopsis,lien=:lien,affiche=:affiche,id_genre=:idgenre,id_age=:idage,id_type1=:idtype,id_date=:iddate WHERE id={$id}");

                $sth->bindValue(':titre', $titre);
                $sth->bindValue(':realisateur', $realisateur);
                $sth->bindValue(':synopsis', $synopsis);
                $sth->bindValue(':lien', $lien);
                $sth->bindValue(':affiche', $imgname);
                $sth->bindValue(':idgenre', $id_genre);
                $sth->bindValue(':idage', $id_age);
                $sth->bindValue(':idtype', $id_type1);
                $sth->bindValue(':iddate', $id_date);

                $sth->execute();

                header('Location:admin.php');
            }
        } else {
            echo 'Image trop lourde ou de mauvais format';
        }
    } else {
        echo 'Image trop lourde ou de mauvais format';
    }
}

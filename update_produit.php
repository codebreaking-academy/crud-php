<?php

include('functions.php');
$pdo = pdo_connect_mysql();

if (isset($_GET['id'])) {

  $stmt = $pdo->prepare('SELECT * FROM produits WHERE id = ?');
  $stmt->execute([$_GET['id']]);
  $produit = $stmt->fetch(PDO::FETCH_ASSOC);

  if (isset($_POST['bouton'])) {

    $id = $_GET['id'];
    $nom = $_POST['nom'];
    $description = $_POST['description'];
    $prix = $_POST['prix'];
    $categorie = $_POST['categorie'];
    $tag = isset($_POST['tag']) ? $_POST['tag'] : '';
    $note = isset($_POST['note']) ? $_POST['note'] : '';
    $date = isset($_POST['date']) ? $_POST['date'] : '';

    if (!empty($_FILES['image']['name'])) {
      unlink('images/' . $produit['image']);
      $new_image = $_FILES["image"]["name"];
      $tmpname = $_FILES["image"]["tmp_name"];
      $place = "images/";
      move_uploaded_file($tmpname, $place . $new_image);

      $query = $pdo->prepare("UPDATE `produits` SET `nom`= '$nom' , `image`= '$new_image' , `description`= '$description' ,`prix`= '$prix' , `categorie_id`= '$categorie', `tag_id` = '$tag', `note` = '$note', `date_sortie` = '$date' WHERE `id`= ? ");
    } else {
      // Garder l'ancienne image
      $query = $pdo->prepare("UPDATE `produits` SET `nom`= '$nom' , `description`= '$description' ,`prix`= '$prix' , `categorie_id`= '$categorie', `tag_id` = '$tag', `note` = '$note', `date_sortie`  = '$date' WHERE `id`= ? ");
    }
    $query->execute([$id]);

    header('location:read_produit.php');
  }

  $query = $pdo->prepare('SELECT * FROM categorie');
  $query->execute();
  $categories = $query->fetchAll(PDO::FETCH_ASSOC);

  $query = $pdo->prepare('SELECT * FROM tag');
  $query->execute();
  $tags = $query->fetchAll(PDO::FETCH_ASSOC);


  echo $twig->render("update_produit.twig", array("produit" => $produit, "categories" => $categories, "tags" => $tags));
}

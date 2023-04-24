<?php

include('functions.php');
$pdo = pdo_connect_mysql();

if (isset($_POST['bouton'])) {
  $id = isset($_POST['id']) && !empty($_POST['id']) && $_POST['id'] != 'auto' ? $_POST['id'] : NULL;
  $nom = isset($_POST['nom']) ? $_POST['nom'] : '';
  // image 
  $image = $_FILES["image"]["name"];
  $tmpname = $_FILES["image"]["tmp_name"];
  // Définir le dossier de destination pour l'image
  $place = "images/";
  // Déplacer l'image téléchargée vers le dossier de destination
  move_uploaded_file($tmpname, $place . $image);
  $description = isset($_POST['description']) ? $_POST['description'] : '';
  $categorie = isset($_POST['categorie']) ? $_POST['categorie'] : '';
  $prix = isset($_POST['prix']) ? $_POST['prix'] : '';
  $tag = isset($_POST['tag']) ? $_POST['tag'] : '';
  $note = isset($_POST['note']) ? $_POST['note'] : '';
  $date = isset($_POST['date']) ? $_POST['date'] : '';
  $query = $pdo->prepare('INSERT INTO `produits`(`id`,`nom`, `image`, `description`, `prix`, `categorie_id`, `tag_id`, `note`, `date_sortie`) VALUES (?,?,?,?,?,?,?,?,?)');
  $query->execute([$id, $nom, $image, $description, $prix, $categorie, $tag, $note, $date]);
}

$query = $pdo->prepare('SELECT * FROM categorie');
$query->execute();
$categories = $query->fetchAll(PDO::FETCH_ASSOC);

$query = $pdo->prepare('SELECT * FROM tag');
$query->execute();
$tags = $query->fetchAll(PDO::FETCH_ASSOC);

echo $twig->render("create_produit.twig", array("categories" => $categories, "tags" => $tags));

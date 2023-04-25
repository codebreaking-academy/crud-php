<?php

include 'functions.php';
$query = $pdo->prepare('SELECT a.* , c.type FROM categorie c  join produits a on c.id = a.categorie_id ORDER BY id DESC  ');
$query->execute();
$produits = $query->fetchAll(PDO::FETCH_ASSOC);

$query = $pdo->prepare('SELECT * FROM categorie');
$query->execute();
$categories = $query->fetchAll(PDO::FETCH_ASSOC);

echo $twig->render("read_produit.twig", array("url" => $_SERVER["REQUEST_URI"], "produits" => $produits, "categories" => $categories));

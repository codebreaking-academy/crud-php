<?php
header("Content-type: application/json; charset=utf-8");
include '../functions.php';
$pdo = pdo_connect_mysql();
$query = $pdo->prepare('SELECT a.* , c.type FROM categorie c  join produits a on c.id = a.categorie_id ORDER BY id DESC  ');
$query->execute();
$produits = $query->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($produits);

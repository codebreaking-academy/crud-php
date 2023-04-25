<?php
header("Content-type: application/json; charset=utf-8");
include '../functions.php';
$query = $pdo->prepare('SELECT produits.*, tag.tag  FROM produits, tag WHERE produits.tag_id = tag.id AND produits.date_sortie > ( DATE(NOW()) - INTERVAL 1 WEEK)');
$query->execute();
$produits = $query->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($produits);

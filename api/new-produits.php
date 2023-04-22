<?php
header("Content-type: application/json; charset=utf-8");
include '../functions.php';
$query = $pdo->prepare('SELECT *  FROM produits where produits.date_sortie > "2023-21-03"');
$query->execute();
$produits = $query->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($produits);

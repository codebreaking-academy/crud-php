<?php
header("Content-type: application/json; charset=utf-8");
include '../functions.php';
$query = $pdo->prepare('SELECT * FROM categorie');
$query->execute();
$produits = $query->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($produits);

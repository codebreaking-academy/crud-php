<?php
header("Content-type: application/json; charset=utf-8");
include '../functions.php';

if (isset($_GET['id']) && !empty($_GET['id'])) {
    $query = $pdo->prepare('SELECT a.* , c.tag FROM tag c  join produits a on c.id = a.tag_id WHERE c.id = ? ');
    $query->execute([$_GET['id']]);
    $produit = $query->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($produit);
    exit();
}

$query = $pdo->prepare('SELECT * FROM tag');
$query->execute();
$tags = $query->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($tags);

<?php
header("Content-type: application/json; charset=utf-8");
include '../functions.php';
$query = $pdo->prepare('SELECT * FROM tag');
$query->execute();
$tags = $query->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($tags);

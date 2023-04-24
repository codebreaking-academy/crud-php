<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$msg = '';
if (!empty($_POST)) {
  $id = isset($_POST['id']) && !empty($_POST['id']) && $_POST['id'] != 'auto' ? $_POST['id'] : NULL;
  $tag = isset($_POST['tag']) ? $_POST['tag'] : '';
  $stmt = $pdo->prepare('INSERT INTO tag VALUES (?, ?)');
  $stmt->execute([$id, $tag,]);
  // Message de sortie
  $msg = 'Créé avec succès!';
}


echo $twig->render("create_tag.twig", array("msg" => $msg));

<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$msg = '';
if (isset($_GET['id'])) {
  if (!empty($_POST)) {
    $tag = isset($_POST['tag']) ? $_POST['tag'] : '';
    $stmt = $pdo->prepare('UPDATE tag SET tag = ? WHERE id = ?');
    $stmt->execute([$tag, $_GET['id']]);
    $msg = 'mis à jour avec succès!';
  }
  $stmt = $pdo->prepare('SELECT * FROM tag WHERE id = ?');
  $stmt->execute([$_GET['id']]);
  $tag = $stmt->fetch(PDO::FETCH_ASSOC);
  if (!$tag) {
    exit('Le tag n’existe pas avec cet ID !');
  }

  echo $twig->render("update_tag.twig", array("tag" => $tag, "msg" => $msg));
} else {
  exit('No ID specified!');
}

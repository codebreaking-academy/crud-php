<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$msg = '';
// Vérifier que le code de $tag existe
if (isset($_GET['id'])) {
    // Sélectionnez l’enregistrement qui sera supprimé.
    $stmt = $pdo->prepare('SELECT * FROM tag WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    $tag = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$tag) {
        exit('Le tag n’existe pas avec cet ID !');
    }
    // S’assurer que l’utilisateur confirme la suppression

    // L’utilisateur a cliqué sur le bouton « Oui », supprimer l’enregistrement.
    $stmt = $pdo->prepare('DELETE FROM tag WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    $msg = 'Vous avez supprimé le tag !';

    //code qui permet  envoi sur la page read.php
    header('location:read_tag.php');
} else {
    exit('Aucune pièce d’identité indiquée!');
}

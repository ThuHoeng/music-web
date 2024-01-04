<?php
require 'init.php';

$user_id = user('id');

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['remove_from_favorites'])) {
    $song_id = $_POST['song_id'] ?? 0;
    $song_id = (int)$song_id;

    $remove_query = "DELETE FROM favorite_list WHERE song_id = '$song_id' AND user_id = '$user_id'";

    query($remove_query);

    header("Location: favorite.php");
    exit();
}

$query = "SELECT s.*, u.first_name, u.last_name
          FROM favorite_list f
          JOIN songs s ON f.song_id = s.id
          JOIN users u ON s.user_id = u.id
          WHERE f.user_id = '$user_id'
          ORDER BY s.id DESC";

$songs = query($query);

?>

<?php
require 'init.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['song_id'])) {
    $user_id = user('id');
    $song_id = $_POST['song_id'];

    $query = "SELECT * FROM favorite_list WHERE user_id = '$user_id' AND song_id = '$song_id' LIMIT 1";
    $result = query($query);

    if (empty($result)) {
        $insert_query = "INSERT INTO favorite_list (user_id, song_id) VALUES ('$user_id', '$song_id')";
        query($insert_query);

        header('Content-Type: application/json');
        echo json_encode(['success' => true]); // Modify as needed
        exit();
    } else {
        header('Content-Type: application/json');
        echo json_encode(['success' => false, 'message' => 'Song is already in favorites.']); 
        exit();
    }
} else {
    header('Content-Type: application/json');
    echo json_encode(['success' => false, 'message' => 'Invalid request.']); 
    exit();
}

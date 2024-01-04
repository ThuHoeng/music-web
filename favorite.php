<?php
require 'init.php';
$title = "Favorite";

// Check if the user is logged in
if (!is_logged_in()) {
    // Redirect to the login page or handle accordingly
    header("Location: login.php");
    exit();
}

$user_id = user('id');

// Query to retrieve favorite songs for the logged-in user
$query = "SELECT s.*, u.first_name, u.last_name
          FROM favorite_list f
          JOIN songs s ON f.song_id = s.id
          JOIN users u ON s.user_id = u.id
          WHERE f.user_id = '$user_id'
          ORDER BY s.id DESC";

$songs = query($query);

?>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #333;
        color: white;
        padding: 10px;
        text-align: center;
    }

    table.item_class_0 {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: white;
    }

    table.item_class_0 th,
    table.item_class_0 td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
    }

    table.item_class_0 th {
        background-color: #f2f2f2;
    }

    table.item_class_0 tbody tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    table.item_class_0 tbody tr:hover {
        background-color: #ddd;
    }

    .class_19,
    .class_20 {
        max-width: 50px;
        height: auto;
    }

    .class_21,
    .class_22 {
        padding: 10px 15px;
        margin: 5px;
        cursor: pointer;
        border: none;
        border-radius: 4px;
        font-size: 14px;
        font-weight: bold;
        text-transform: uppercase;
    }

    .class_21 {
        background-color: #4CAF50;
        color: white;
    }

    .class_22 {
        background-color: #f44336;
        color: white;
    }

    .class_23 {
        margin-top: 20px;
        display: flex;
        justify-content: space-between;
    }

    .class_24 {
        flex-grow: 1;
    }
</style>
<?php require 'header.php'; ?>

<table class="item_class_0">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Title</th>
            <th scope="col">Artist</th>
            <th scope="col">Views</th>
            <th scope="col">Downloads</th>
            <th scope="col">Popularity</th>
            <th scope="col">Date</th>
            <th class="col">Image</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>
        <?php if (!empty($songs)): ?>
            <?php foreach ($songs as $song): ?>
                <tr>
                    <th>
                        <?= esc($song['id']) ?>
                    </th>
                    <td>
                        <a href="song.php?id=<?= $song['id'] ?>">
                            <?= esc($song['title']) ?>
                        </a>
                    </td>
                    <td>
                        <a href="profile.php?id=<?= $song['user_id'] ?>">
                            <?= esc($song['artist'] ?? 'Unknown') ?>

                        </a>
                    </td>
                    <td>
                        <?= esc($song['views']) ?>
                    </td>
                    <td>
                        <?= esc($song['downloads']) ?>
                    </td>
                    <td>
                        <?= esc($song['popularity']) ?>
                    </td>
                    <td>
                        <?= date("jS M Y", strtotime($song['date'])) ?>
                    </td>
                    <td><img src="<?= get_image($song['image']) ?>" class="class_20"></td>
                    <td>

                        <form method="post" action="delete_favorite.php">
                        <input type="hidden" name="song_id" value="<?= $song['id'] ?>">
                <button type="submit" name="remove_from_favorites" class="class_32">Remove from Favorites</button>
                        </form>
                    </td>
                </tr>
            <?php endforeach ?>
        <?php else: ?>
            <tr>
                <td colspan="9">No favorite songs found.</td>
            </tr>
        <?php endif ?>
    </tbody>
</table>
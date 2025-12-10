<?php
// ========== get-pet.php ==========
// Fetches a single pet by ID

header('Content-Type: application/json');

if (!isset($_GET['petId'])) {
    echo json_encode(['success' => false, 'message' => 'No pet ID provided']);
    exit;
}

$petId = intval($_GET['petId']);

try {
    $pdo = new PDO('mysql:host=127.0.0.1;dbname=adoptiondb;charset=utf8mb4', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $stmt = $pdo->prepare('SELECT petID, name, type, breed, age, price, details, imageDirectory, adoptedById FROM pets WHERE petID = ?');
    $stmt->execute([$petId]);
    $pet = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if ($pet) {
        echo json_encode(['success' => true, 'pet' => $pet]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Pet not found']);
    }
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>
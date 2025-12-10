<?php
// ========== delete-pet.php ==========
// Deletes a pet from the database

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['success' => false, 'message' => 'Invalid request method']);
    exit;
}

$input = json_decode(file_get_contents('php://input'), true);

if (!isset($input['petId'])) {
    echo json_encode(['success' => false, 'message' => 'No pet ID provided']);
    exit;
}

$petId = intval($input['petId']);

try {
    $pdo = new PDO('mysql:host=127.0.0.1;dbname=adoptiondb;charset=utf8mb4', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Get image path before deleting
    $stmt = $pdo->prepare('SELECT imageDirectory FROM pets WHERE petID = ?');
    $stmt->execute([$petId]);
    $pet = $stmt->fetch(PDO::FETCH_ASSOC);
    
    // Delete pet from database (CASCADE will handle related records)
    $stmt = $pdo->prepare('DELETE FROM pets WHERE petID = ?');
    $stmt->execute([$petId]);
    
    // Delete image file if it exists
    if ($pet && !empty($pet['imageDirectory']) && file_exists($pet['imageDirectory'])) {
        unlink($pet['imageDirectory']);
    }
    
    echo json_encode(['success' => true]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>
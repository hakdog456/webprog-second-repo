<?php
// ========== get-all-pets-admin.php ==========
// Fetches all pets including adopted ones for admin view

header('Content-Type: application/json');

try {
    $pdo = new PDO('mysql:host=127.0.0.1;dbname=adoptiondb;charset=utf8mb4', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Get all pets (including adopted ones)
    $stmt = $pdo->query('SELECT petID, name, type, breed, age, price, details, imageDirectory, adoptedById FROM pets ORDER BY petID DESC');
    $pets = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode(['success' => true, 'pets' => $pets]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>
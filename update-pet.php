<?php
// ========== update-pet.php ==========
// Updates an existing pet in the database

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['success' => false, 'message' => 'Invalid request method']);
    exit;
}

try {
    // Validate required fields
    if (empty($_POST['petId']) || empty($_POST['name']) || empty($_POST['breed']) || 
        empty($_POST['age']) || empty($_POST['type']) || empty($_POST['price'])) {
        echo json_encode(['success' => false, 'message' => 'Missing required fields']);
        exit;
    }

    $petId = intval($_POST['petId']);
    $name = $_POST['name'];
    $breed = $_POST['breed'];
    $age = intval($_POST['age']);
    $type = $_POST['type'];
    $price = floatval($_POST['price']);
    $details = $_POST['details']; // Already JSON string from client
    
    // Handle image upload if new image provided
    $imageDirectory = $_POST['currentImagePath'] ?? '';
    
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $uploadDir = 'images/homeImages/petPics/';
        
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0755, true);
        }
        
        $fileExtension = strtolower(pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION));
        $allowedExtensions = ['jpg', 'jpeg', 'png', 'webp', 'gif'];
        
        if (!in_array($fileExtension, $allowedExtensions)) {
            echo json_encode(['success' => false, 'message' => 'Invalid file type']);
            exit;
        }
        
        $fileName = uniqid() . '_' . preg_replace('/[^a-zA-Z0-9._-]/', '', $_FILES['image']['name']);
        $targetPath = $uploadDir . $fileName;
        
        if (move_uploaded_file($_FILES['image']['tmp_name'], $targetPath)) {
            // Delete old image if it exists
            if (!empty($imageDirectory) && file_exists($imageDirectory)) {
                unlink($imageDirectory);
            }
            $imageDirectory = $targetPath;
        }
    }

    // Database connection
    $pdo = new PDO('mysql:host=127.0.0.1;dbname=adoptiondb;charset=utf8mb4', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Update pet in database
    $stmt = $pdo->prepare('UPDATE pets SET name = ?, type = ?, breed = ?, age = ?, price = ?, details = ?, imageDirectory = ? WHERE petID = ?');
    $stmt->execute([$name, $type, $breed, $age, $price, $details, $imageDirectory, $petId]);
    
    echo json_encode(['success' => true]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
} catch (Exception $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>
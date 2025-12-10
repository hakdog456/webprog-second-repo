<?php
// ========== add-pet.php ==========
// Adds a new pet to the database

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['success' => false, 'message' => 'Invalid request method']);
    exit;
}

try {
    // Validate required fields
    if (empty($_POST['name']) || empty($_POST['breed']) || empty($_POST['age']) || 
        empty($_POST['type']) || empty($_POST['price'])) {
        echo json_encode(['success' => false, 'message' => 'Missing required fields']);
        exit;
    }

    // Handle image upload
    $imageDirectory = '';
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $uploadDir = 'images/homeImages/petPics/';
        
        // Create directory if it doesn't exist
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0755, true);
        }
        
        $fileExtension = strtolower(pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION));
        $allowedExtensions = ['jpg', 'jpeg', 'png', 'webp', 'gif'];
        
        if (!in_array($fileExtension, $allowedExtensions)) {
            echo json_encode(['success' => false, 'message' => 'Invalid file type']);
            exit;
        }
        
        // Generate unique filename
        $fileName = uniqid() . '_' . preg_replace('/[^a-zA-Z0-9._-]/', '', $_FILES['image']['name']);
        $targetPath = $uploadDir . $fileName;
        
        if (move_uploaded_file($_FILES['image']['tmp_name'], $targetPath)) {
            $imageDirectory = $targetPath;
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to upload image']);
            exit;
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Image is required']);
        exit;
    }

    // Database connection
    $pdo = new PDO('mysql:host=127.0.0.1;dbname=adoptiondb;charset=utf8mb4', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Prepare data
    $name = $_POST['name'];
    $breed = $_POST['breed'];
    $age = intval($_POST['age']);
    $type = $_POST['type'];
    $price = floatval($_POST['price']);
    $details = $_POST['details']; // Already JSON string from client
    
    // Insert into database
    $stmt = $pdo->prepare('INSERT INTO pets (name, type, breed, age, price, details, imageDirectory) VALUES (?, ?, ?, ?, ?, ?, ?)');
    $stmt->execute([$name, $type, $breed, $age, $price, $details, $imageDirectory]);
    
    echo json_encode(['success' => true, 'petId' => $pdo->lastInsertId()]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
} catch (Exception $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>
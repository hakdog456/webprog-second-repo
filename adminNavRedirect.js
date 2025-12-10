// Admin Navigation Redirect Script
// This script checks if the logged-in user is admin and redirects "Our Animals" links to the admin panel

document.addEventListener('DOMContentLoaded', function() {
    // Check if user is logged in and get their data from localStorage
    const loggedInUser = localStorage.getItem('jurassicBark_user');
    
    if (loggedInUser) {
        // alert("fouond")
        try {
            const userData = JSON.parse(loggedInUser);
            // alert(userData)
            // Check if the username is 'admin'
            if (userData.username && userData.username.toLowerCase() === 'admin') {
                // Find all "Our Animals" links in both desktop and mobile nav
                const ourAnimalsLinks = document.querySelectorAll('a[href="ourAnimals.html"]');
                // alert(ourAnimalsLinks.length)
                // Update each link to point to admin panel
                ourAnimalsLinks.forEach(link => {
                    link.href = 'adminAnimals.html';
                    
                    // Optional: Add a visual indicator that this is admin mode
                    // Uncomment the line below if you want to add a class for styling
                    // link.classList.add('admin-link');
                });
                
                console.log('Admin detected: Our Animals links redirected to admin panel');
            }
        } catch (error) {
            console.error('Error parsing user data:', error);
        }
    }
});

// Alternative approach: If you want to handle it with event listeners instead
// This prevents the default navigation and redirects programmatically
function setupAdminRedirect() {
    const loggedInUser = localStorage.getItem('jurassicBark_user');
    
    if (loggedInUser) {
        try {
            const userData = JSON.parse(loggedInUser);
            
            if (userData.username && userData.username.toLowerCase() === 'admin') {
                const ourAnimalsLinks = document.querySelectorAll('a[href="ourAnimals.php"]');
                
                ourAnimalsLinks.forEach(link => {
                    link.addEventListener('click', function(e) {
                        e.preventDefault();
                        window.location.href = 'adminAnimals.html';
                    });
                });
            }
        } catch (error) {
            console.error('Error setting up admin redirect:', error);
        }
    }
}

// Call the alternative function if you prefer the event listener approach
// setupAdminRedirect();
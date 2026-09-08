let topNavbar = document.getElementById('top'); // Top part of the navbar
let mainNavbar = document.querySelector('.main-navbar'); // Main part of the navbar
let lastScrollY = window.scrollY;

// Get the height of the top navbar dynamically
const topNavbarHeight = topNavbar.offsetHeight;

window.addEventListener('scroll', () => {
    if (window.scrollY > lastScrollY) {
        topNavbar.classList.add('hidden'); // Hide the top navbar
        mainNavbar.style.transform = `translateY(-${topNavbarHeight}px)`; // Move the main navbar up by the exact height of the top navbar
    } else {
        topNavbar.classList.remove('hidden'); // Show the top navbar
        mainNavbar.style.transform = 'translateY(0)'; // Reset the main navbar position
    }
    lastScrollY = window.scrollY;
});
function toggleMenu() {
    const navLinks = document.querySelector('.nav-links');
    navLinks.classList.toggle('active');
}
// Function to load HTML content into a container
function loadContent(id, url) {
    fetch(url)
      .then((response) => {
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        return response.text();
      })
      .then((data) => {
        document.getElementById(id).innerHTML = data;
      })
      .catch((error) => {
        console.error('Error loading content:', error);
      });
  }
  
  // Load the header and footer
  loadContent('header', 'header.html');
  loadContent('footer', 'footer.html');
  
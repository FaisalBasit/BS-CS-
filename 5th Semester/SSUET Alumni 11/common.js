function updateImagePaths(basePath) {
  // Find all images in the dynamically loaded content
  const images = document.querySelectorAll('#header img, #footer img');
  images.forEach((img) => {
    // Update the `src` attribute to include the base path
    img.src = basePath + img.getAttribute('data-src');
  });
}

function getBasePath() {
  const scriptPath = window.location.pathname; // Current file path (e.g., /Events/events.html)
  const levelsUp = scriptPath.split('/').length - 2; // Calculate depth
  return '../'.repeat(levelsUp); // Add '../' for each folder level
}

function loadContent(id, fileName) {
  const basePath = getBasePath(); // Get the base path
  const url = basePath + fileName; // Construct full path

  fetch(url)
    .then((response) => {
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }
      return response.text();
    })
    .then((data) => {
      document.getElementById(id).innerHTML = data;

      // Update image paths after content is loaded
      if (id === 'header' || id === 'footer') {
        updateImagePaths(basePath);
      }
    })
    .catch((error) => {
      console.error(`Failed to load ${fileName}:`, error);
    });
}

// Load header, footer, and styles
loadContent('header', 'header.html');
loadContent('footer', 'footer.html');

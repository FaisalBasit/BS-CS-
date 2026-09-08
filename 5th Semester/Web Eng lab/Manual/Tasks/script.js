$(document).ready(function () {
    // JSON data
    const productData = [
        {
            name: "Smartphone",
            price: "$699",
            description: "High-end smartphone with excellent features.",
            image: "https://img.freepik.com/free-vector/realistic-display-smartphone-with-different-apps_52683-30241.jpg?semt=ais_hybrid",
            category: "Electronics",
            details: "Specifications: 128GB storage, 5G enabled. Availability: In stock."
        },
        {
            name: "T-Shirt",
            price: "$29",
            description: "Comfortable cotton t-shirt.",
            image: "https://img.freepik.com/premium-psd/basic-vneck-tshirt-mockup_126278-224.jpg",
            category: "Clothing",
            details: "Specifications: 100% cotton. Availability: Limited stock."
        },
        {
            name: "Vacuum Cleaner",
            price: "$149",
            description: "Powerful vacuum cleaner for home use.",
            image: "https://img.freepik.com/premium-psd/vacuum-cleaner-black-color-3d-rendering-isolated-transparent-background_808337-23272.jpg",
            category: "Home",
            details: "Specifications: 1200W power, lightweight. Availability: In stock."
        },
        {
            name: "Laptop",
            price: "$999",
            description: "Lightweight laptop for work and play.",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTib2mTSG6hBH7rZ4SfVyCgW7NYqdicszL7jA&s",
            category: "Electronics",
            details: "Specifications: 256GB SSD, 8GB RAM. Availability: In stock."
        }
    ];

    // Function to render products
    function renderProducts(data) {
        const productGrid = $("#productGrid");
        productGrid.empty();
        data.forEach(product => {
            productGrid.append(`
                <div class="product-card">
                    <img src="${product.image}" alt="${product.name}">
                    <h3>${product.name}</h3>
                    <p>${product.price}</p>
                    <p>${product.description}</p>
                    <button class="details-btn">Details</button>
                    <div class="details">${product.details}</div>
                </div>
            `);
        });
    }

    // Initial render
    renderProducts(productData);

    // Filter functionality
    $(".filter-checkbox").on("change", function () {
        const selectedCategories = $(".filter-checkbox:checked")
            .map(function () {
                return $(this).val();
            })
            .get();

        const filteredData = productData.filter(product =>
            selectedCategories.length === 0 || selectedCategories.includes(product.category)
        );

        renderProducts(filteredData);
    });

    // Details toggle
    $(document).on("click", ".details-btn", function () {
        $(this).siblings(".details").slideToggle();
    });
});

import React, { useState, useEffect } from "react";

const App = () => {
  const [products, setProducts] = useState([]);
  const [newProduct, setNewProduct] = useState({ name: "", price: "", description: "" });
  const [error, setError] = useState("");

  // Fetch products from API
  useEffect(() => {
    fetch("http://localhost:5000/products")
      .then((response) => response.json())
      .then((data) => setProducts(data))
      .catch((err) => console.error("Error fetching products:", err));
  }, []);

  // Add a new product
  const addProduct = () => {
    // Validation: Ensure name and price are not empty
    if (!newProduct.name || !newProduct.price) {
      setError("Name and price are required.");
      return;
    }

    setError(""); // Clear previous error
    fetch("http://localhost:5000/products", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(newProduct),
    })
      .then((response) => response.json())
      .then((product) => {
        setProducts((prev) => [...prev, product]); // Update product list
        setNewProduct({ name: "", price: "", description: "" }); // Clear form fields
      })
      .catch((err) => console.error("Error adding product:", err));
  };

  return (
    <div style={{ padding: "20px", fontFamily: "Arial" }}>
      <h1>Product Catalog</h1>

      {/* Add Product Form */}
      <div>
        <h2>Add New Product</h2>
        <input
          type="text"
          placeholder="Name"
          value={newProduct.name}
          onChange={(e) => setNewProduct({ ...newProduct, name: e.target.value })}
          style={{ margin: "5px" }}
        />
        <input
          type="text"
          placeholder="Price"
          value={newProduct.price}
          onChange={(e) => setNewProduct({ ...newProduct, price: e.target.value })}
          style={{ margin: "5px" }}
        />
        <input
          type="text"
          placeholder="Description"
          value={newProduct.description}
          onChange={(e) => setNewProduct({ ...newProduct, description: e.target.value })}
          style={{ margin: "5px" }}
        />
        <button onClick={addProduct} style={{ marginLeft: "5px" }}>
          Add Product
        </button>
        {error && <p style={{ color: "red" }}>{error}</p>}
      </div>

      {/* Display Products */}
      <div
        style={{
          marginTop: "20px",
          display: "grid",
          gridTemplateColumns: "repeat(auto-fit, minmax(200px, 1fr))",
          gap: "20px",
        }}
      >
        {products.map((product) => (
          <div
            key={product.id}
            style={{
              border: "1px solid #ddd",
              borderRadius: "8px",
              padding: "16px",
              boxShadow: "0 4px 8px rgba(0,0,0,0.1)",
            }}
          >
            <h2>{product.name}</h2>
            <p><strong>Price:</strong> {product.price}</p>
            <p><strong>Description:</strong> {product.description}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default App;

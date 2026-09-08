using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductCatalogController : ControllerBase
    {
        // Static list to simulate a product catalog
        private static List<Product> products = new List<Product>
        {
            new Product { Id = 1, Name = "Laptop", Price = 1000, Description = "High-performance laptop" },
            new Product { Id = 2, Name = "Phone", Price = 500, Description = "Smartphone with a great camera" }
        };

        // GET api/productcatalog
        [HttpGet]
        public ActionResult<List<Product>> Get()
        {
            return Ok(products);
        }

        // POST api/productcatalog
        [HttpPost]
        public ActionResult<Product> Post([FromBody] Product product)
        {
            if (string.IsNullOrEmpty(product.Name) || product.Price <= 0)
            {
                return BadRequest("Product name and price are required.");
            }

            products.Add(product);
            return CreatedAtAction(nameof(Get), new { id = product.Id }, product);
        }
    }

    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public string Description { get; set; }
    }
}

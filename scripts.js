// Mock property data
const properties = [
  { id: 1, name: "Cozy Apartment", location: "New York", price: 1200 },
  { id: 2, name: "Luxury Villa", location: "Los Angeles", price: 2500 },
  { id: 3, name: "Modern Studio", location: "Chicago", price: 900 },
  { id: 4, name: "Beach House", location: "Miami", price: 3000 },
];

// Load properties on page load
function loadProperties(properties) {
  const propertiesDiv = document.getElementById("properties");
  propertiesDiv.innerHTML = ""; // Clear existing properties
  properties.forEach((property) => {
    const propertyCard = document.createElement("div");
    propertyCard.className = "property-card";
    propertyCard.innerHTML = `
      <h3>${property.name}</h3>
      <p>Location: ${property.location}</p>
      <p>Price: $${property.price}/month</p>
    `;
    propertiesDiv.appendChild(propertyCard);
  });
}

// Search functionality
document.getElementById("searchBtn").addEventListener("click", () => {
  const locationInput = document.getElementById("locationInput").value.toLowerCase();
  const priceInput = document.getElementById("priceInput").value;
  
  const filteredProperties = properties.filter((property) => {
    const matchesLocation = property.location.toLowerCase().includes(locationInput);
    const matchesPrice = priceInput ? property.price <= priceInput : true;
    return matchesLocation && matchesPrice;
  });
  
  loadProperties(filteredProperties);
});

// Initial load
loadProperties(properties);

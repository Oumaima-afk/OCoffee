function initializeMap(coordinates) {
    if (coordinates && coordinates.latitude && coordinates.longitude) {
      const map = L.map('map').setView([coordinates.latitude, coordinates.longitude], 5);
  
      L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
      }).addTo(map);
  
      L.circle([coordinates.latitude, coordinates.longitude], {
        color: 'red',
        fillColor: '#f03',
        fillOpacity: 0.5,
        radius: 50000,
      }).addTo(map);
    }
  }
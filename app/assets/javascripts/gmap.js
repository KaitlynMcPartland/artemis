
// Sets background styling of google map

var styles = [
  {"featureType": "all",
  "elementType": "all",
  "stylers": [{"hue": "#e7ecf0"}]
  },
  {"featureType": "all",
  "elementType": "labels",
  "stylers": [{"visibility": "on"}]
  },
  {"featureType": "landscape",
  "elementType": "geometry",
  "stylers": [{"visibility": "on"},
              {"color": "#b4c7d0"}]
  },
  {"featureType": "poi",
  "elementType": "all",
  "stylers": [{"visibility": "off"}]
  },
  {"featureType": "road",
  "elementType": "all",
  "stylers": [{"saturation": -70}]
  },
  {"featureType": "transit",
  "elementType": "all",
  "stylers": [{"visibility": "off"}]
  },
  {"featureType": "water",
  "elementType": "all",
  "stylers": [{"visibility": "simplified"},
              {"saturation": -60},
              {"color": "#0077b5"}]
  }];


// Sets gradient for heatmap weight range

var gradient = [
  'rgba(0, 255, 255, 0)',
  'rgba(0, 255, 255, 1)',
  'rgba(0, 191, 255, 1)',
  'rgba(0, 127, 255, 1)',
  'rgba(0, 63, 255, 1)',
  'rgba(0, 0, 255, 1)',
  'rgba(0, 0, 223, 1)',
  'rgba(0, 0, 191, 1)',
  'rgba(0, 0, 159, 1)',
  'rgba(0, 0, 127, 1)',
  'rgba(63, 0, 91, 1)',
  'rgba(127, 0, 63, 1)',
  'rgba(191, 0, 31, 1)',
  'rgba(255, 0, 0, 1)'
];


// Set-up functions to toggle different types of crime heatmaps

function toggleTotal() {
  heatmap.set('data', heatmap.get('data') ? totalData() : null);
};

function toggleDrugs() {
  heatmap.set('data', heatmap.get('data') ? drugsData() : null);
};

function toggleMisc() {
  heatmap.set('data', heatmap.get('data') ? miscData() : null);
};

function toggleTheft() {
  heatmap.set('data', heatmap.get('data') ? theftData() : null);
};

function toggleViolent() {
  heatmap.set('data', heatmap.get('data') ? violentData() : null);
};

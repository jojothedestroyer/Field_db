const path = require('path');
const { GenerateSW } = require('workbox-webpack-plugin');
const path = require('path');

module.exports = {
  entry: './static/js/serviceworker.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'static/js'), // Output path for bundled JS
  },
  // ... other webpack config options
};



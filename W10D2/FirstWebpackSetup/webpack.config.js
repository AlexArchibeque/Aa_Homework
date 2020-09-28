const path = require('path');

module.exports = {
  context: __dirname,
  entry: './entry.jsx',
  output: {
    path: path.resolve(__dirname),
    filename: 'main.js'
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules)/,
        use: {
            loader: 'babel-loader',
            query: {
                presets: ['@babel/env', '@babel/react']
            }
          },
        }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: [".js", ".jsx", "*"]
  },
  watch: true, 
  watchOptions: {
      poll:true,
      aggregateTimeout:300
  }
};
path = require "path"
webpack = require "webpack"

module.exports =
  entry: "./src/javascripts/index.jsx"
  output:
    path: "./"
    filename: "src/index.js"
  devtool: "inline-source-map"
  resolve:
    root: [
      path.join(__dirname, "src", "javascripts")
      path.join(__dirname, "src", "stylesheets")
    ]
  module:
    loaders: [
      {
        test: /\.styl$/
        loader: "style-loader!css-loader!stylus-loader"
      }
      {
        test: /\.css$/
        loader: "style-loader!css-loader"
      }
      {
        test: /\.coffee$/
        loader: "coffee"
      }
      {
        test: /\.jsx?$/
        exclude: /^(node_modules|dist|scripts)/
        loader: "babel?stage=0"
      }
      {
        test: /\.woff($|\?)|\.woff2($|\?)|\.ttf($|\?)|\.eot($|\?)|\.svg($|\?)/,
        loader: "url-loader"
      }
    ]
  plugins: []

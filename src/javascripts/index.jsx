// Loading stylesheets
require("frigging-bootstrap/dist/frigging-bootstrap.css")
require("../stylesheets/index.styl")


// More loading
let React = require("react")
let LoginPage = require("./components/login_page.jsx")

// Setting a theme
require("frig").defaultTheme(require("frigging-bootstrap"))

// Rendering it all out in glorious high-definition HTML
document.addEventListener("DOMContentLoaded", () => {
  let el = document.getElementById("example")
  React.render(<LoginPage/>, el)
})

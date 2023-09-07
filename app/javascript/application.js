// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "./sppech"

document.addEventListener("DOMContentLoaded", function() {
  var myTabs = new bootstrap.Tab(document.querySelector('#myTabs'))
});

// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"
import {
  connectToSocket
} from "./socket"


// handler for the join button
$(document).ready(function () {
  $("#joinButton").click(function () {
    var email = $("#email").val()
    if (/@/.test(email)) {
      connectToSocket(email.trim(), document)
    } else {
      alert("You should enter your email to join the game")
    }
  })
})
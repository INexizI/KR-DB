import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
require("channels")
// require("jquery-ui")
require("packs/char")
require("packs/gear")
// require("packs/calc")
require("packs/skill")
require("packs/stat")
require("packs/search")
require("packs/jquery.easy-autocomplete.js")

// import 'src/stylesheets/application'
// const images = require.context('../images', true)

Rails.start()
Turbolinks.start()
ActiveStorage.start()

console.log('Webpacker loaded')

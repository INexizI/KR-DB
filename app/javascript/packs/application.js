import Rails from "@rails/ujs"
require("turbolinks").start()
import * as ActiveStorage from "@rails/activestorage"
require("channels")
require("jquery-ui")
require("packs/char")
require("packs/gear")
require("packs/calc")
require("packs/stat")
require("packs/search")
require("packs/jquery.easy-autocomplete.js")

Rails.start()
ActiveStorage.start()

console.log('Webpacker loaded')

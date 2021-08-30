// require("@rails/ujs").start()
import Rails from "@rails/ujs"
require("turbolinks").start()
// import { Turbo } from "@hotwired/turbo-rails"
// require("@rails/activestorage").start()
import * as ActiveStorage from "@rails/activestorage"
require("channels")
require("jquery-ui")
require("packs/char")
require("packs/gear")
require("packs/calc")
require("packs/stat")
require("packs/search")
require("packs/jquery.easy-autocomplete.js")

// window.Turbo = Turbo
Rails.start()
ActiveStorage.start()

console.log('Webpacker loaded')

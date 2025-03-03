import Rails from "@rails/ujs"
import Turbo from "@hotwired/turbo"
import * as ActiveStorage from "@rails/activestorage"
import "../channels"
import "../controllers"

import jquery from "jquery"
window.jQuery = jquery
window.$ = jquery

// window.addEventListener('turbolinks:load', () => {
//   navigator.serviceWorker.register('/service-worker.js').then(registration => {
//     console.log('ServiceWorker registered: ', registration);

//     var serviceWorker;
//     if (registration.installing) {
//       serviceWorker = registration.installing;
//       console.log('Service worker installing.');
//     } else if (registration.waiting) {
//       serviceWorker = registration.waiting;
//       console.log('Service worker installed & waiting.');
//     } else if (registration.active) {
//       serviceWorker = registration.active;
//       console.log('Service worker active.');
//     }
//   }).catch(registrationError => {
//     console.log('Service worker registration failed: ', registrationError);
//   });
// });

require("./sup")
require("./jquery.easy-autocomplete.js")
require("./search")

Rails.start()
ActiveStorage.start()

console.log('Packs loaded')
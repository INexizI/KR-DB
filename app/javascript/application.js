import "@hotwired/turbo-rails"

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

require("./packs/sup")
require("./packs/jquery.easy-autocomplete.js")
require("./packs/search")

console.log("App is running!~")
// const { resolve } = require('path');
// const { environment } = require('@rails/webpacker')
const { config, environment, Environment } = require('@rails/webpacker');
const WebpackerPwa = require('webpacker-pwa');
new WebpackerPwa(config, environment);
module.exports = environment

const customConfig = {
  resolve: {
    fallback: {
      dgram: false,
      fs: false,
      net: false,
      tls: false,
      child_process: false
    }
  }
}

environment.config.delete('node.dgram')
environment.config.delete('node.fs')
environment.config.delete('node.net')
environment.config.delete('node.tls')
environment.config.delete('node.child_process')

environment.config.merge(customConfig)

module.exports = environment

const EventEmitter = require('events');

module.exports = new EventEmitter();

// Do some work, and after some time emit
// the 'ready' event from the module itself.
setTimeout(() => {
  // module.exports.emit('ready');
  module.exports = { b: 321 }
}, 1000);

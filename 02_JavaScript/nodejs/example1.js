const a = require('./event');
a.on('ready', () => {
  console.log('module "event" is ready');
});
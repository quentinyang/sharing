# Async Javascript


## Relations
 - mdn: https://developer.mozilla.org/zh-CN/
 - stack overflow:  
 - jsFiddle:

## async funciton
颠覆对JS的认识（demolished my preconceptions）
```
var start = new Date;
setTimeout(function(){
var end = new Date;
console.log('Time elapsed:', end - start, 'ms');
}, 500);
while (new Date - start < 1000) {};
```

### I/O functions
example1: 
```
var ajaxRequest = new XMLHttpRequest;
ajaxRequest.open('GET', url);
ajaxRequest.send(null);
while (ajaxRequest.readyState === XMLHttpRequest.UNSENT) {
// readyState can't change until the loop returns
};
```
Instead, you need to attach a handler and return to the event queue.
```
var ajaxRequest = new XMLHttpRequest;
ajaxRequest.open('GET', url);
ajaxRequest.send(null);
ajaxRequest.onreadystatechange = function() {
// ...
};
```

example 2:
```
var obj = {};
console.log(obj);
obj.foo = 'bar';
```
NOTE: nodejs里是同步的。

## Timing functions

 * setTimeout/setInterval
 * requestAnimationFrame
    http://www.cnblogs.com/Wayou/p/requestAnimationFrame.html

```
// application.js
$(function() {
utils.log('Ready');
});
// utils.js
window.utils = {
log: function() {
if (window.console) console.log.apply(console, arguments);
}
};
<script src="application.js"></script>
<script src="util.js"></script>
```
Note: This code works fine—unless the browser loads the page from the cache,
making the DOM ready before the script runs.



“Do, or do not. There is no try.”



# Nodejs exports 和 module.exports 的区别

引用[exports 和 module.exports 的区别](https://cnodejs.org/topic/5231a630101e574521e45ef8)文中所述：

```
require() 返回的是 module.exports 而不是 exports
module.exports 初始值为一个空对象 {}
exports 是指向的 module.exports 的引用
```

## require
require返回引入文件`module.exports`返回的内容，
```
// a.js
module.exports = {
  foo: 'hello'
}
// b.js
const a = require('./a');
console.log(a); // {foo: 'hello'}
```
而为什么看到exports.xxx返回也是可以的呢？是因为exports是module.exports的一个快捷方式（shortcut）。后面会详解。`exports.foo = 123`相当于是`module.exports = {a: 123}`。

## module.exports

先上[module.exports#官方文档](https://nodejs.org/dist/latest-v14.x/docs/api/modules.html#modules_module_exports)介绍。原文是：

> The `module.exports` object is created by the Module system. Sometimes this is not acceptable; many want their module to be an instance of some class. To do this, assign the desired export object to `module.exports`. Assigning the desired object to exports will simply rebind the local exports variable, which is probably not what is desired.
> 官方文档举了个例子，说`module.exports`必须要立即执行返回才有效，放在任何回调里执行是无效的（闭包函数不影响）。

```
# 有效写法 a.js
module.exports = { a: 'hello' };
# 有效写法 a.js
(() => {module.exports = { a: 'hello' }})()

# 无效写法 a.js
setTimeout(() => {
  module.exports = { a: 'hello' };
}, 0);
```

## exports

线上[exports#官方文档](https://nodejs.org/dist/latest-v14.x/docs/api/modules.html#modules_exports_shortcut)介绍。简单点说 exports 确实就 modules.exports 的一个引用。

```
module.exports = {foo: 'hello'}; // 按照module.exports标准写法
module.exports.foo = 'hello'; // 上面可以
exports.foo = 'hello';
```

当`module.exports`和`exports.xxx`形式同时存在时，优先使用`module.exports`的定义，无视 exports 上的值。

```
// a.js
module.exports = {foo: 'hello'};
exports.a = 'hello'; // 新属性无效
exports.foo = 'foo'; // 覆盖属性无效
// b.js
const a = require('./a.js'); // {foo: 'hello'}
```

exports 是 module.exports 的引用，如果重新赋值 exports，则会丢失 module.exports 的引用。这个和 js 的引用赋值是一样的原理。

```
const a = {a:'a'}
let b = a; // 这里b引用了a变量的地址
b.a = 'A'; // b更改了地址的值，a就被改变了。
console.log(a); // {a: 'A'}
b = {b: 'b'}; // b重新赋值，分配了新的内存地址，跟a无关了
console.log(a, b);
```

所以，

```
# a.js
exports = {a: 'hello'};
# b.js
const a = require('./a.js'); // 这里是拿不到a的内容的，默认是个空对象
```

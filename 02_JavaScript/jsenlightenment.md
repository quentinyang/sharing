# JS启示录《JavaScript Enlightenment》阅读分享与延伸

这本书基本上都在说JS的基础知识，对于有经验的JS工程师来说，很多内容说得有点啰嗦了，他总是遵循：由浅入深，循序渐进的教学方式，同时会在不同的地方对重要的观点重复阐述。（重要的话说三遍）

## 基础部分

基础这部分简单点讲下，对有经验的JS工程师肯定都看过《JavaScript权威指南》或者《JavaScript高级编程》等，所以基础部分不过多描述。如下主要从基础数据类型切入，逐个大致说说。

### 数据类型

#### 1. 字面量
 1. String. E.g.: `''` `'Hello World.'`

    需要特殊说明的是：字符串可以使用`String`对象实例的属性(`length` `constructor`)和方法：

    - anchor()    创建 HTML 锚。
    - big()   用大号字体显示字符串。
    - blink() 显示闪动字符串。
    - bold()  使用粗体显示字符串。
    - charAt()    返回在指定位置的字符。
    - charCodeAt()    返回在指定的位置的字符的 Unicode 编码。
    - __concat()__    连接字符串。
    - fixed() 以打字机文本显示字符串。
    - fontcolor() 使用指定的颜色来显示字符串。
    - fontsize()  使用指定的尺寸来显示字符串。
    - fromCharCode()  从字符编码创建一个字符串。
    - __indexOf()__   检索字符串。
    - italics()   使用斜体显示字符串。
    - lastIndexOf()   从后向前搜索字符串。
    - link()  将字符串显示为链接。
    - localeCompare() 用本地特定的顺序来比较两个字符串。
    - __match()__ 找到一个或多个正则表达式的匹配。
    - __replace()__   替换与正则表达式匹配的子串。
    - search()    检索与正则表达式相匹配的值。
    - __slice()__ 提取字符串的片断，并在新的字符串中返回被提取的部分。
    - small() 使用小字号来显示字符串。
    - __split()__ 把字符串分割为字符串数组。
    - strike()    使用删除线来显示字符串。
    - sub()   把字符串显示为下标。
    - substr()    从起始索引号提取字符串中指定数目的字符。
    - substring() 提取字符串中两个指定的索引号之间的字符。
    - sup()   把字符串显示为上标。
    - toLocaleLowerCase() 把字符串转换为小写。
    - toLocaleUpperCase() 把字符串转换为大写。
    - __toLowerCase()__   把字符串转换为小写。
    - __toUpperCase()__   把字符串转换为大写。
    - toSource()  代表对象的源代码。
    - __toString()__  返回字符串。
    - valueOf()   返回某个字符串对象的原始值。

 1. Number. E.g.: `100` `0.13`

    Number对象属性：

    - constructor 返回对创建此对象的 Number 函数的引用。
    - MAX_VALUE   可表示的最大的数。
    - MIN_VALUE   可表示的最小的数。
    - NaN 非数字值。
    - NEGATIVE_INFINITY   负无穷大，溢出时返回该值。
    - POSITIVE_INFINITY   正无穷大，溢出时返回该值。
    - prototype   使您有能力向对象添加属性和方法。

    方法：

    - toString    把数字转换为字符串，使用指定的基数。
    - toLocaleString  把数字转换为字符串，使用本地数字格式顺序。
    - toFixed 把数字转换为字符串，结果的小数点后有指定位数的数字。
    - toExponential   把对象的值转换为指数计数法。
    - toPrecision 把数字格式化为指定的长度。
    - valueOf 返回一个 Number 对象的基本数字值。

 1. Boolean `true` `false`

    - toSource()  返回该对象的源代码。
    - toString()  把逻辑值转换为字符串，并返回结果。
    - valueOf()   返回 Boolean 对象的原始值。

__参考链接：__

 - <a href="http://www.w3school.com.cn/jsref/jsref_obj_number.asp">JavaScript Number 对象</a>
 - <a href="http://www.w3school.com.cn/jsref/jsref_obj_string.asp" target="_blank">JavaScript String 对象</a>
 - <a href="http://www.w3school.com.cn/jsref/jsref_obj_boolean.asp" target="_blank">JavaScript Boolean 对象</a>

#### 2. Array & Object

```
var obj = new Object();
obj.name = "Object name";
obj.attr = "Object attribute";

var regObj = new RegExp('^[a-z]$');
var reg = /^[a-z]$/;

var test = new String('Test');//对象
var helloworld = "Hello world";//原始字符串，而非对象

console.log(regObj.constructor);//function RegExp()
console.log(test.constructor);//function String()
test.length;//4
helloworld.length;//11
console.log((100).constructor);//function Number()

console.log(Function.constructor);//function Function()
console.log(Function.constructor.constructor);//function Function()
```

#### 3. Function

```
// 定义函数
var test = new Function('a', 'b', 'return a + b');//new Function('a,b', 'return a + b');
function test() {
    return a + b;
}
var test = function(a, b){return a + b;}
```

```
// example 1
var fn = function(){};
fn.name = 'Function';
console.log(fn.name);

// example 2
var obj = {foo: 'value'};
obj.hasOwnProperty('foo');//true
obj.hasOwnProperty('toString');//false
('toString' in obj)//true


// example 3
var fn = function() {
    this.foo = 'value';
};
fn.prototype.name = 'Function';

var test = new fn();
var arr1 = [], arr2 = [];
for (var i in test) {
    arr1.push(i);
}

for (var i in test) {
    if (test.hasOwnProperty(i)) {
        arr2.push(i);
    }
}

console.log(arr1);// foo, name
console.log(arr2);// foo

test.propertyIsEnumerable('foo');//true
test.propertyIsEnumerable('name');//false


// Function
// 属性：prototype
// 实例属性arguments, constructor, length
// 实例方法apply, call, toString, （bind）


```

这里要说一说hasOwnProperty和in：

 - hasOwnProperty
    1. 对象存在指定的属性才会为true。
    1. 凡是通过原型链继承过来的属性hasOwnProperty总是false，因为不会检索原型链上的属性。

 - in
    1. 遍历对象的所有属性，包括原型链上的。
    1. 如果对象属性设置为不可枚举，那么属性就不会检索出来。

    所以`in`遍历的值是：`对象可枚举的属性集`和`原型链上可枚举的属性集`的集合。

能看懂下面的例子就掌握了：

```
function Parent() {
    this.parent = 'Parent';
}
Parent.prototype.run = 'run';

function Child() {
    this.child = 'Child';
}
Child.prototype = new Parent();
Child.prototype.skills = 'skills';

var kid = new Child();
console.log(kid.hasOwnProperty('child'));// true
console.log(kid.hasOwnProperty('parent'));// false
console.log(kid.hasOwnProperty('run'));//false
console.log(kid.hasOwnProperty('skills'));//false

kid.name = "Quentin";
Object.defineProperty(kid, 'id', {value : '1', enumerable : false });
Object.defineProperty(kid.__proto__, 'pid', {value : '1', enumerable : false });

for (var i in kid) {
    console.log(i)
}
//Output: child name parent skills run
```


## 阅读延伸

### 继承

#### 1. 原型继承（对象间的继承）

`原型式继承`: 借助已有的对象创建新的对象，将子类的原型指向父类，就相当于加入了父类这条原型链。

```
//动物
function Animal() {
    this.name = 'Animal';
    this.skills = ['climb'];
}
Animal.prototype.run = function(km) {
    console.log('Run: ' + km + 'km.');
};
//哺乳动物
function Mammal() {
    this.name = 'Mammal';
    this.limb = 4;//肢体
}
Mammal.prototype = new Animal();//Mammal 继承 Animal，通过原型，形成链条

var dog = new Mammal();
console.log('Mammal: ' + dog.name, 'Has ' + dog.limb + ' limb.');
console.log('Mammal skills: ' + dog.skills);//得到被继承的属性

//人类：继续继承
function Person(name) {
    this.name = name;
    this.hasGendar = true;
}
Person.prototype = new Mammal();//继承了 Animal 和 Mammal

var quentin = new Person('Quentin');
console.log('Person: ' + quentin.name, 'Has ' + quentin.limb + ' limb.');//继承了 Animal 和 Mammal
console.log('Person has gendar: ' + quentin.hasGendar);

quentin.skills.push('php');
console.log('Person skills: ' + quentin.skills);

var james = new Person('James');
console.log(james.skills);//注意这里已经多了php。'climb, php'
```

总结一下，使用prototype实现继承的问题：

1. 父类的构造函数，不是在子类被实例化时执行的，而仅仅在继承时执行一次。
1. 父类不是在子类实例化时被执行，所以如果属性是对象（而非字面量），则存在引用产生的问题。如上。
1. 如果构造函数需要参数，就有点麻烦了。
1. 子类的原型被替换成了父类的实例对象，所以从子类的constructor(构造器)是父类而不是子类。

#### 2. 类式继承（构造函数间的继承）

`类式继承`: 在子类型构造函数的内部调用超类型的构造函数。

```
//动物
function Animal() {
    this.name = 'Animal';
    this.skills = ['climb'];
}
Animal.prototype.run = function(km) {
    console.log(this.name + ' run: ' + km + 'km.');
};

//哺乳动物
function Mammal() {
    Animal.call(this);
    this.name = 'Mammal';
    this.limb = 4;//肢体
}

var dog = new Mammal();
console.log('Mammal: ' + dog.name, 'Has ' + dog.limb + ' limb.');//Output: Mammal: Mammal Has 4 limb.
console.log('Mammal skills: ' + dog.skills);//得到被继承的属性 Output: Mammal skills: climb
//感觉没问题，但是请看下面
dog.run(10);//dog.run is not a function. 压根就没有继承到prototype上的run方法
```

总结一下:

使用call/apply的问题：很严重的问题是，压根没发继承prototype上的属性和方法。


#### 3. 组合继承

组合式继承是比较常用的一种继承方法，其背后的思路是 使用原型链实现对原型属性和方法的继承，而通过借用构造函数来实现对实例属性的继承。这样，既通过在原型上定义方法实现了函数复用，又保证每个实例都有它自己的属性。

```
//动物
function Animal(name) {
    this.name = name;
    this.skills = ['climb'];
}
Animal.prototype.run = function(km) {
    console.log(this.name + ' run: ' + km + 'km.');
};

//哺乳动物
function Mammal(name) {
    Animal.call(this, name);//对象冒充，给超类传参
    this.limb = 4;//肢体
}
Mammal.prototype = new Animal();//原型继承

var dog = new Mammal('HaShiQi');
console.log('Mammal: ' + dog.name, 'Has ' + dog.limb + ' limb.');//Output: Mammal: HaShiQi Has 4 limb.
console.log('Mammal skills: ' + dog.skills);//得到被继承的属性 Output: Mammal skills: climb
dog.run(10);//HaShiQi run: 10km.


//人类：继续继承
function Person(name) {
    Mammal.call(this, name);
    this.hasGendar = true;
}
Person.prototype = new Mammal();//继承了 Animal 和 Mammal

var quentin = new Person('Quentin');
console.log('Person: ' + quentin.name, 'Has ' + quentin.limb + ' limb.');//继承了 Animal 和 Mammal
console.log('Person has gendar: ' + quentin.hasGendar);

quentin.skills.push('php');
console.log('Person skills: ' + quentin.skills);

var james = new Person('James');
console.log(james.skills);//注意这里不存在问题了
```

总结一下，如上代码解决了：

1. <del>父类的构造函数，不是在子类被实例化时执行的，而仅仅在继承时执行一次。</del>
1. <del>父类不是在子类实例化时被执行，所以如果属性是对象（而非字面量），则存在引用产生的问题。如上。</del>
1. <del>如果构造函数需要参数，就有点麻烦了。</del>
1. <del>子类的原型被替换成了父类的实例对象，所以从子类的constructor(构造器)是父类而不是子类。</del>

```
// 这点是最容易解决的
Person.prototype.constructor = Person;
```

等等，还没结束。

细看如上代码，发现调用了两次父类。

怎么解决？

有个文章提到，参考<a href="https://segmentfault.com/a/1190000002440502#articleHeader9" target="_blank">寄生组合式继承</a>

看得有点懵逼，不过发现，只要改成`Mammal.prototype = Animal.prototype` 也就解决了new 2次的问题。
```
<script>
// 注意这里，是核心代码
function inheritPrototype(superClass, subClass) {
    // 创建对象
    var prototype = createObj(superClass.prototype);
    // 增强对象，修复构造函数问题
    prototype.constructor = subClass;
    // 指定对象（原型）
    subClass.prototype = prototype;
}

function createObj(proto){
    function F(){}
    F.prototype = proto;
    return new F();
}

//动物
function Animal(name) {
    console.log('Animal');
    this.name = name;
    this.skills = ['climb'];
}
Animal.prototype.run = function(km) {
    console.log(this.name + ' run: ' + km + 'km.');
};

//哺乳动物
function Mammal(name) {
    Animal.call(this, name);//对象冒充，给超类传参
    this.limb = 4;//肢体
}

inheritPrototype(Animal, Mammal);//通过这里实现继承

// Mammal.prototype = Animal.prototype;//注意这里跟上面不同，原型继承
// Mammal.prototype.constructor = Mammal;

var dog = new Mammal('HaShiQi');
console.log('Mammal: ' + dog.name, 'Has ' + dog.limb + ' limb.');//Output: Mammal: HaShiQi Has 4 limb.
console.log('Mammal skills: ' + dog.skills);//得到被继承的属性 Output: Mammal skills: climb
dog.run(10);//HaShiQi run: 10km.


//人类：继续继承
function Person(name) {
    Mammal.call(this, name);
    this.hasGendar = true;
}
inheritPrototype(Mammal, Person);//通过这里实现继承
// Person.prototype = Mammal.prototype;//注意这里跟上面不同，继承了 Animal 和 Mammal
// Person.prototype.constructor = Person;

var quentin = new Person('Quentin');
console.log('Person: ' + quentin.name, 'Has ' + quentin.limb + ' limb.');//继承了 Animal 和 Mammal
console.log('Person has gendar: ' + quentin.hasGendar);

quentin.skills.push('php');
console.log('Person skills: ' + quentin.skills);

var james = new Person('James');
console.log('Person', james.name, 'Has skills: ' + james.skills);//注意这里不存在问题了
</script>

```


### 作用域和闭包

#### 作用域

```
// Example 1
function fn() {
    console.log(this.name);
}
var obj1 = {
    name: 'Quentin',
    method: fn
};

var name = "Window.name";
obj1.method();//Quentin
fn();//Window.name
```

```
// Example 2
function fn() {
    return function(){
        console.log(this.name);
    }
}

function fn2() {
    var self = this;
    return function(){
        console.log(self.name);
    }
}
var obj1 = {
    name: 'Quentin',
    method: fn,
    method2: fn2
};

var name = "Window.name";
obj1.method()();//Window.name
obj1.method2()();//Quentin

```

#### 闭包

```
// example 1
for (var i = 0; i < 10; i++) {
    setTimeout((function(){
            console.log(i);
    }), 1000);
}
// 10, 10, 10, 10, 10, 10, 10, 10, 10, 10

// example 2
for (var i = 0; i < 10; i++) {
    setTimeout((function(i){
        return function(){console.log(i);}
    })(i), 1000);
}
// 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
```


## 附录

如下是原书的回顾：

1. 对象是由存储值的已命名属性组成的。
1. JavaScript中的几乎所有对象都可以表现得像对象。复杂值是对象，原始值也可以看做对象。这就是为什么会听到有人说JavaScript中的所有对象都是对象。
1. 对象是通过使用new关键字调用构造函数或者通过使用字面量表达式来创建的。
1. 构造函数是对象（Function()对象），因此，在JavaScript中，对象创建对象。
1. JavaScript提供9个原生构造函数：Object(),Array(),String(),Number(),Boolean(),Function(),Date(),RegExp()和Error()。在需要时，String(),Number(),和Boolean()构造函数可以提供原始值和对象包装器，以便原始值被当做对象时，它们可以表现得像对象。
1. null、undefined、"string"、10、true和false值都是原始值，没有对象特性，除非将它们看做对象。
1. 使用new关键字调用Object()、Array()、String()、Number()、Boolean()、Function()、Date()、RegExp()、和Error()构造函数时，会创建一个对象，被称为“复杂对象”或者“引用对象”。
1. 原始形式的“string”、10、true和false等没有对象属性，除非将它们用作对象，然后JavaScript会在后台创建临时包装器对象，这些值就可以表现的像对象。
1. 原始值是通过值存储的，复制时是通过字面量进行复制的。另一方面，复杂对象值是通过引用进行存储的，复制时是通过引用进行复制的。
1. 当原始值的值相等时，它们即相等，而复杂对象只有在引用相同值的情况下才是相等的。也就是说：都指向同一对象时，一个复杂值才等于另一个复杂值。
1. 由于复杂对象和引用的特性，JavaScript对象具有动态属性。
1. JavaScript是可变的，这意味着可以在任何时间操作原生对象和用户自定义的对象属性。
1. 可以使用点表示法或括号表示法获取、设置、更新对象的属性。当被操作的对象属性的名称采用表达式形成时，使用花括号表示法非常方便。（如Array[‘prototype']['join'].apply()]）
1. 当查找对象属性时，查找链先查看对象引用的属性；如果没有找到，则继续在构造函数的prototype属性上进行查找；如果仍找不到，由于原型拥有一个对象值并且该值是由Object()构造函数创建的，因此在Object()构造函数的prototype属性（Object.prototype）上进行查找。如果还找不到，那么可以确定属性值为undefinded。
1. 原型查找链表明了继承(也称为原型继承)在JavaScript是如何实现的。
1. 由于对象属性查找链(也称为原型继承)的存在，因此所有对象都继承自Object(),因此prototype属性本身就是一个Object()对象。
1. JavaScript函数是一等公民：函数是拥有属性和值的对象。
    - 总有返回值，可以是显式的或者是undefined。
    - 函数在命名之前调用，会进行函数提升。
1. 在函数内部使用this关键字时，它是一种用于引用包含该函数的对象的通用方法。
1. 在运行时基于调用函数所在的上下文，可以确定this的值。
    - 在嵌套函数中使用this关键字会引用全局对象，可以用另一个变量缓存this对象来解决这个问题。
1. 在全局作用域内使用this关键字，this引用全局对象。
1. JavaScript将函数作为创建唯一作用域的方法。
1. JavaScript提供全局作用域，所有的JavaScript代码都在这个作用域内。
    - JavaScript没有块级作用域，只有全局作用域、局部作用域（函数作用域）和eval作用域。
1. 函数（特别是封装函数）创建一个作用域链来解决变量查找问题。
1. 用域链是基于代码的编写方式创建，而不是基于调用函数所在的上下文。这使得函数即使从一个不同的上下文调用函数（对象？），也能够访问最初编写代码时所在作用域，这称为闭包。
    - 也就是说函数定义时确定作用域，而不是调用时确定。
1. 函数内部定义的函数表达式和变量，如果没有使用var声明，则都会变成全局属性。然而，函数作用域内部的函数语句仍在编写代码时所作的作用域内定义。
1. 全局作用域内定义的函数和变量（没有使用var），会成为全局对象的属性。
1. 全局作用域内定义的函数和变量（使用var），会成为全局变量。

# Code Push

## code-push(安装、注册、发布等)
1. `npm install -g code-push-cli`
1. `code-push register`
```
A browser is being launched to authenticate your account. Follow the instructions it displays to complete your registration.

Enter your access key:  pfux0eBHvirb1K9NnZSonnhgIxD-4yoltiYTl

Successfully logged-in. Your session file was written to /Users/quentin/.code-push.config. You can run the code-push logout command at any time to delete this file and terminate your session.
```
1. `code-push app add <appName>`

## [IOS App开发配置codepush](https://github.com/Microsoft/react-native-code-push#ios-setup)

[Note]

 1. 文中提及的CodePush代码： `jsCodeLocation = [CodePush bundleURL];`

```
 #ifdef DEBUG
   jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios&dev=true"];
 #else
   jsCodeLocation = [CodePush bundleURLForResource:@"index.ios" withExtension:@"jsbundle"];
 #endif

 //默认是：jsCodeLocation = [CodePush bundleURL];//default main.jsbundle
```

 1. 我自己用codepush发布更新时，是放在./release下，然后再push到云服务器端：
 
 ```
 # IOS
 react-native bundle --platform ios --entry-file index.ios.js \
 --bundle-output ./release/index.ios.jsbundle \
 --assets-dest ./release \
 --dev false

 # Android
 react-native bundle --platform android --entry-file index.android.js  \
 --bundle-output ./release/index.android.jsbundle \
 --assets-dest ./release \
 --dev false
 ```
 
 codepush到云端：
 
 ```
 code-push release YourApp ./release 1.0.0
 ```
 
 1. 正常发布时（注意安卓下的assets-dest）：
 ```
 # IOS
 react-native bundle --platform ios --entry-file index.ios.js \
 --bundle-output ./index.ios.jsbundle \
 --assets-dest ./ \
 --dev false

 # Android
 react-native bundle --platform android --entry-file index.android.js \
 --bundle-output ./android/app/src/main/assets/index.android.jsbundle \
 --assets-dest ./android/app/src/main/res/
 --dev false
 ```

 1. Android上的小坑：
    1. `adb shell input keyevent 82`代替摇一摇
    1. 如果模拟器没有键盘和按键，那么需要在创建虚拟器时选个皮肤("skin")
    1. Android上如有莫名报错，先尝试把~/.gradle 和 RN App项目目录的权限重置一下。（这个比较坑，曾花费我一天时间）


## 常用命令

1. `code-push app ls` - 列出所有App
1. `code-push deployment ls <appName> -k`

 
## 参考
- [Code Push - Get started fast](http://microsoft.github.io/code-push/)
- [Github react native code push](https://github.com/Microsoft/react-native-code-push)
- [Codepush Cli](http://microsoft.github.io/code-push/docs/cli.html)
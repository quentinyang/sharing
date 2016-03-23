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
 react-native bundle --platform ios --entry-file index.ios.js \
 --bundle-output ./release/index.ios.jsbundle \
 --assets-dest ./release \
 --dev false
 ```
 
 codepush到云端：
 
 ```
 code-push release YourApp ./release 1.0.0
 ```
 
 1. 正常发布时（注意assets-dest/和）：
 ```
 react-native bundle --platform ios --entry-file index.ios.js \
 --bundle-output ./index.ios.jsbundle \
 --assets-dest ./ \
 --dev false
 ```

## 参考
- [Code Push - Get started fast](http://microsoft.github.io/code-push/)
- [Github react native code push](https://github.com/Microsoft/react-native-code-push)
# Reactjs Native

## Debug
```
Most likely another process is already using this port
Run the following command to find out which process:

   lsof -n -i4TCP:8081 

You can either shut down the other process:

   kill -9 <PID> 

or run packager on different port.
```

```
react-native bundle --entry-file index.ios.js --bundle-output main.jsbundle --platform ios
```

## Links
1. [ReactNative中文](http://reactnative.cn/docs/0.21/getting-started.html#content)
1. [中文文档](http://wiki.jikexueyuan.com/project/react-native/)
1. [中文文档](http://react-native.cn/)
1. [Get started](https://facebook.github.io/react-native/docs/getting-started.html#content)
1. [React Native Blog](https://code.facebook.com/posts/1014532261909640/react-native-bringing-modern-web-techniques-to-mobile/)
1. [Build on device via static bundle](https://github.com/facebook/react-native/issues/240)
1. [React Native 的理解和看法](http://div.io/topic/851)
1. [React Native通信机制详解](http://blog.cnbang.net/tech/2698/)
1. [Android Setup](https://facebook.github.io/react-native/docs/android-setup.html)
1. [Building React Native from source](https://facebook.github.io/react-native/docs/android-building-from-source.html)
1. [React Native进行签名打包成Apk](http://www.lcode.org/%E3%80%90react-native%E5%BC%80%E5%8F%91%E3%80%91react-native%E8%BF%9B%E8%A1%8C%E7%AD%BE%E5%90%8D%E6%89%93%E5%8C%85%E6%88%90apk/)
1. [React Native Android 踩坑之旅](http://www.alloyteam.com/2015/10/react-native-android-steps-on-tour/)

## TODO
1. 功能：
    1. 消息推送
    1. 自动更新版本
    1. 微聊
1. 业务细节：
    1. 电话：电话前判断＋电话结束后监测
    1. 
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
1. [中文文档](http://wiki.jikexueyuan.com/project/react-native/)
1. [中文文档](http://react-native.cn/)
1. [Get started](https://facebook.github.io/react-native/docs/getting-started.html#content)
1. [React Native Blog](https://code.facebook.com/posts/1014532261909640/react-native-bringing-modern-web-techniques-to-mobile/)
1. [Build on device via static bundle](https://github.com/facebook/react-native/issues/240)
1. [React Native 的理解和看法](http://div.io/topic/851)
1. [React Native通信机制详解](http://blog.cnbang.net/tech/2698/)
1. [Android Setup](https://facebook.github.io/react-native/docs/android-setup.html)

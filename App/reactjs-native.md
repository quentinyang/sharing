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

## Android上的小坑：
    1. `adb shell input keyevent 82`代替摇一摇
    1. 如果模拟器没有键盘和按键，那么需要在创建虚拟器时选个皮肤("skin")
    1. Android上如有莫名报错，先尝试把~/.gradle 和 RN App项目目录的权限重置一下。（这个比较坑，曾花费我一天时间）


## App Icon Setting

1. For IOS:

 在`Images.xcassets`里设置，有几种icons尺寸：

 1. `29pt` `29pt@2x` `29pt@3x`
 1. `40pt@2x` `40pt@3x` 
 1. `57pt` `57pt@2x` 
 1. `60pt@2x` `60pt@3x`

![img](http://i.stack.imgur.com/qDrcO.png)

1. For Android:

 把文件`ic_launcher.png`放到目录：`[YOUR_PROJECT_DIR]/android/app/src/main/res/mipmap-*`

 1. `72*72`   `ic_launcher.png` to `mipmap-hdpi`
 1. `48*48`   `ic_launcher.png` to `mipmap-mdpi`
 1. `96*96`   `ic_launcher.png` to `mipmap-xhdpi`
 1. `144*144` `ic_launcher.png` to `mipmap-xxhdpi`

## Launch Image Setting
//TOD

[iOS Launch screen in React Native](http://stackoverflow.com/questions/34027270/ios-launch-screen-in-react-native/34073928)


## Auto-update (Code Push)
请参见[Code Push](./codepush.md)

## Notification

使用[个推](http://www.getui.com/)

个推流程如下图：

![iOS SDK 推送流程](http://docs.igetui.com/download/attachments/1934126/iOS%E6%8E%A8%E9%80%81%E6%B5%81%E7%A8%8B.png?version=1&modificationDate=1458610869000)

坑：

1. IOS配置时唯一的坑就是，Search Path里，既要加header path也要library path。
1. Android集成SDK时使用`onCreate`:

```
@Override
public void onCreate(Bundle savedInstanceState) {
    Log.d("onCreate", "initializing sdk...");
    super.onCreate(savedInstanceState);

    PushManager.getInstance().initialize(this.getApplicationContext());
}

```

### APNS证书等
 - __`推荐`__[个推的文件](http://docs.igetui.com/pages/viewpage.action?pageId=1934165)
 - [如何生成p12文件](http://blog.csdn.net/zhugq_1988/article/details/37656107)


## IOS Launcher Image 启动图片

参考另一篇[IOS Icon](./ios_launcher)

## IOS Launcher Image 启动图片

参考另一篇[IOS Launcher Image](./ios_launcher)

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
1. [【React Native开发】React Native进行签名打包成Apk](http://www.45256.com/softbc/79226.html)
1. [React Native Android 踩坑之旅](http://www.alloyteam.com/2015/10/react-native-android-steps-on-tour/)
1. [苹果加急通道](https://developer.apple.com/contact/app-store/?topic=expedite)


## AppStore准备提交App预览快照尺寸(jpg)

- 3.5

```
640 x 920 pixels for hi-res portrait (without status bar) minimum
640 x 960 pixels for hi-res portrait (full screen) maximum
960 x 600 pixels for hi-res landscape (without status bar) minimum
960 x 640 pixels for hi-res landscape (full screen) maximum
```
- 4

```
640 x 1096 pixels for portrait (without status bar) minimum
640 x 1136 pixels for portrait (full screen) maximum
1136 x 600 pixels for landscape (without status bar) minimum
1136 x 640 pixels for landscape (full screen) minimum
```
- 4.7

```
Screenshot requirements are:
72 dpi, RGB, flattened, no transparency
High-quality JPEG or PNG image file format
750 x 1334 pixels for hi-res portrait
1334 x 750 pixels for hi-res landscape
```
- 5.5

```
Screenshot requirements are:
72 dpi, RGB, flattened, no transparency
High-quality JPEG or PNG image file format
1242 x 2208 pixels for hi-res portrait
2208 x 1242 pixels for hi-res landscape
```
- iPad

```
1024 x 748 pixels for landscape (without status bar) minimum
1024 x 768 pixels for landscape (full screen) maximum
2048 x 1496 pixels for hi-res (without status bar) minimum
2048 x 1536 pixels for hi-res landscape (full screen) maximum
768 x 1004 pixels for portrait (without status bar) minimum
768 x 1024 pixels for portrait (full screen) maximum
1536 x 2008 pixels for hi-res portrait (without status bar) minimum
1536 x 2048 pixels for hi-res portrait (full screen) maximum
```

- iPad Pro

```
2048 x 2732 pixels for hi-res portrait
2732 x 2048 pixels for hi-res landscape
```

## TODO
1. 功能：
    1. 消息推送
    1. 自动更新版本
    1. 微聊
1. 业务细节：
    1. 电话：电话前判断＋电话结束后监测
    1. 
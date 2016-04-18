# IOS Launcher image启动加载图片

支持iphone和ipad，且仅支持竖屏的Splash图片(*.png)，最小资源列表如下：

- 1242x2208 - (414x736-3x) 
- 750x1334  - (375x667-2x) 
- 320x480 - (320x480-1x) 
- 640x960 - (320x480-2x) 
- 640x1136 - (320x568-2x) 
- 768x1024 - (768x1024-1x)
- 1536x2048 - (768x1024-2x)

对应的`Contents.json`如下：

```
{
  "images" : [
    {
      "extent" : "full-screen",
      "idiom" : "iphone",
      "subtype" : "736h",
      "filename" : "1242x2208.png",
      "minimum-system-version" : "8.0",
      "orientation" : "portrait",
      "scale" : "3x"
    },
    {
      "extent" : "full-screen",
      "idiom" : "iphone",
      "subtype" : "667h",
      "filename" : "750x1334.png",
      "minimum-system-version" : "8.0",
      "orientation" : "portrait",
      "scale" : "2x"
    },
    {
      "orientation" : "portrait",
      "idiom" : "iphone",
      "filename" : "640x960.png",
      "extent" : "full-screen",
      "minimum-system-version" : "7.0",
      "scale" : "2x"
    },
    {
      "extent" : "full-screen",
      "idiom" : "iphone",
      "subtype" : "retina4",
      "filename" : "640x1136.png",
      "minimum-system-version" : "7.0",
      "orientation" : "portrait",
      "scale" : "2x"
    },
    {
      "orientation" : "portrait",
      "idiom" : "ipad",
      "filename" : "768x1024.png",
      "extent" : "full-screen",
      "minimum-system-version" : "7.0",
      "scale" : "1x"
    },
    {
      "orientation" : "portrait",
      "idiom" : "ipad",
      "filename" : "1536x2048.png",
      "extent" : "full-screen",
      "minimum-system-version" : "7.0",
      "scale" : "2x"
    },
    {
      "orientation" : "portrait",
      "idiom" : "iphone",
      "filename" : "320x480.png",
      "extent" : "full-screen",
      "scale" : "1x"
    },
    {
      "orientation" : "portrait",
      "idiom" : "iphone",
      "filename" : "640x960.png",
      "extent" : "full-screen",
      "scale" : "2x"
    },
    {
      "orientation" : "portrait",
      "idiom" : "iphone",
      "filename" : "640x1136.png",
      "extent" : "full-screen",
      "subtype" : "retina4",
      "scale" : "2x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}
```

## Android

仅支持竖屏的Splash图片(*.png)，最小资源列表如下：

mipmap-hdpi@480x800.png
mipmap-mdpi@320x480.png
xhdpi@720x1280.png
xxhdpi@960x1600.png


## Links

- [IOS - Icon and Image Sizes](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/MobileHIG/IconMatrix.html#//apple_ref/doc/uid/TP40006556-CH27-SW2)

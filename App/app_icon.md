# App Icon设置

## IOS Icon图片尺寸

支持iphone和ipad，且仅支持竖屏的Icon图片(*.png)，最小资源列表如下：

 - icon-29
 - icon-29@2x
 - icon-29@3x
 - icon-40
 - icon-40@2x
 - icon-40@3x
 - icon-57
 - icon-57@2x
 - icon-60@2x
 - icon-60@3x
 - icon-76
 - icon-76@2x
 - icon-167

对应的`Contents.json`如下：

 ```
 {
  "images" : [
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "icon-29.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "icon-29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "icon-29@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "icon-40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "icon-40@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "57x57",
      "idiom" : "iphone",
      "filename" : "icon-57.png",
      "scale" : "1x"
    },
    {
      "size" : "57x57",
      "idiom" : "iphone",
      "filename" : "icon-57@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "icon-60@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "icon-60@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "icon-29.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "icon-29@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "ipad",
      "size" : "40x40",
      "filename" : "icon-40.png",
      "scale" : "1x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "icon-40@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "ipad",
      "size" : "76x76",
      "filename" : "icon-76.png",
      "scale" : "1x"
    },
    {
      "idiom" : "ipad",
      "size" : "76x76",
      "filename" : "icon-76@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "ipad",
      "size" : "83.5x83.5",
      "filename" : "icon-167.png",
      "scale" : "2x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}
```

## Android Icon尺寸
mipmap-hdpi@72x72.png
mipmap-mdpi@48x48.png
xhdpi@96x96.png
xxhdpi@144x144.png


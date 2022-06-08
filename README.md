# HLPhotoBrowserHelper
对KSPhotoBrowser简单封装

##### 支持使用CocoaPods引入, Podfile文件中添加:

``` objc
pod 'HLPhotoBrowserHelper', '1.0.0'
```

基本使用方法:<p>

``` objc
[HLPhotoBrowserHelper showImageUrls:self.imageUrls
                        sourceViews:self.imageViews
                      selectedIndex:tapImageview.tag
                             fromVC:self];
```
> 注意`KSPhotoBrowser`依赖了`SDWebImage`，所以Podfile中还需添加 `pod "SDWebImage"`

# Requirements

iOS 9.0 +, Xcode 7.0 +

# Dependency

- "KSPhotoBrowser", '0.3.1'

# Version

* 1.0.0 :

  完成HLPhotoBrowserHelper基础搭建

# License
HLPhotoBrowserHelper is available under the MIT license. See the LICENSE file for more info.

//
//  HLPhotoBrowserHelper.m
//  HLPhotoBrowserHelper
//
//  Created by JJB_iOS on 2022/6/8.
//

#import "HLPhotoBrowserHelper.h"

@implementation HLPhotoBrowserHelper

#pragma mark - Private Method

// 安全转换URL（解决url中带中文）
+ (NSURL *)safeURL:(NSString *)url
{
    if (!url) {
        url = @"";
    }
    NSURL *rUrl = [NSURL URLWithString:url];
    if (rUrl) {
        return rUrl;
    }
    url = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]];
    return [NSURL URLWithString:url];
}

#pragma mark - Public Mehtod

+ (void)showImageUrls:(NSArray<NSString *> *)imageUrls
          sourceViews:(NSArray<UIImageView *> *)sourceViews
        selectedIndex:(NSInteger)selectedIndex
               fromVC:(UIViewController *)fromVC
{
    [self showImageUrls:imageUrls
            sourceViews:sourceViews
          selectedIndex:selectedIndex
        backgroundStyle:KSPhotoBrowserBackgroundStyleBlurPhoto
     pageindicatorStyle:KSPhotoBrowserPageIndicatorStyleDot
                 fromVC:fromVC];
}

+ (void)showImageUrls:(NSArray<NSString *> *)imageUrls
          sourceViews:(NSArray<UIImageView *> *)sourceViews
        selectedIndex:(NSInteger)selectedIndex
      backgroundStyle:(KSPhotoBrowserBackgroundStyle)backgroundStyle
   pageindicatorStyle:(KSPhotoBrowserPageIndicatorStyle)pageindicatorStyle
               fromVC:(UIViewController *)fromVC
{
    NSAssert(imageUrls, @"图片地址数组不能为空");
    if (sourceViews) {
        NSAssert(imageUrls.count == sourceViews.count, @"图片地址数组长度和载体数组长度不一致");
    }
    NSMutableArray *items = @[].mutableCopy;
    for (int i = 0; i < imageUrls.count; i++) {
        NSString *url = imageUrls[i];
        UIImageView *imageView = nil;
        if (sourceViews) {
            imageView = sourceViews[i];
        }
        KSPhotoItem *item = [KSPhotoItem itemWithSourceView:imageView imageUrl:[self safeURL:url]];
        [items addObject:item];
    }
    KSPhotoBrowser *browser = [KSPhotoBrowser browserWithPhotoItems:items selectedIndex:selectedIndex];
    browser.backgroundStyle = backgroundStyle;
    browser.pageindicatorStyle = pageindicatorStyle;
    [browser showFromViewController:fromVC];
}

+ (void)showImages:(NSArray<UIImage *> *)images
       sourceViews:(NSArray<UIImageView *> *)sourceViews
     selectedIndex:(NSInteger)selectedIndex
            fromVC:(UIViewController *)fromVC
{
    [self showImages:images
         sourceViews:sourceViews
       selectedIndex:selectedIndex
     backgroundStyle:KSPhotoBrowserBackgroundStyleBlurPhoto
  pageindicatorStyle:KSPhotoBrowserPageIndicatorStyleDot
              fromVC:fromVC];
}

+ (void)showImages:(NSArray<UIImage *> *)images
       sourceViews:(NSArray<UIImageView *> *)sourceViews
     selectedIndex:(NSInteger)selectedIndex
   backgroundStyle:(KSPhotoBrowserBackgroundStyle)backgroundStyle
pageindicatorStyle:(KSPhotoBrowserPageIndicatorStyle)pageindicatorStyle
            fromVC:(UIViewController *)fromVC
{
    NSAssert(images, @"图片地址数组不能为空");
    if (sourceViews) {
        NSAssert(images.count == sourceViews.count, @"图片数组长度和载体数组长度不一致");
    }
    NSMutableArray *items = @[].mutableCopy;
    for (int i = 0; i < images.count; i++) {
        UIImage *image = images[i];
        UIImageView *imageView = nil;
        if (sourceViews) {
            imageView = sourceViews[i];
        }
        KSPhotoItem *item = [KSPhotoItem itemWithSourceView:imageView image:image];
        [items addObject:item];
    }
    KSPhotoBrowser *browser = [KSPhotoBrowser browserWithPhotoItems:items selectedIndex:selectedIndex];
    browser.backgroundStyle = backgroundStyle;
    browser.pageindicatorStyle = pageindicatorStyle;
    [browser showFromViewController:fromVC];
}

@end

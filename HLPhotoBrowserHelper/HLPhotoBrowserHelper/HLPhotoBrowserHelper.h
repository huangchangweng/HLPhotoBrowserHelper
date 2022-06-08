//
//  HLPhotoBrowserHelper.h
//  HLPhotoBrowserHelper
//
//  Created by JJB_iOS on 2022/6/8.
//

#import <UIKit/UIKit.h>
#import <KSPhotoBrowser/KSPhotoBrowser.h>

@interface HLPhotoBrowserHelper : NSObject

/**
 *  浏览网络图片
 *  @param imageUrls 图片地址数组
 *  @param sourceViews 图片载体数组
 *  @param selectedIndex 选中下标，如果只有一张传0
 *  @param fromVC 用来弹出图片浏览器的ViewController
 */
+ (void)showImageUrls:(NSArray<NSString *> *)imageUrls
          sourceViews:(NSArray<UIImageView *> *)sourceViews
        selectedIndex:(NSInteger)selectedIndex
               fromVC:(UIViewController *)fromVC;

/**
 *  浏览网络图片
 *  @param imageUrls 图片地址数组
 *  @param sourceViews 图片载体数组
 *  @param selectedIndex 选中下标，如果只有一张传0
 *  @param backgroundStyle 背景样式
 *  @param pageindicatorStyle 浏览器page显示样式
 *  @param fromVC 用来弹出图片浏览器的ViewController
 */
+ (void)showImageUrls:(NSArray<NSString *> *)imageUrls
          sourceViews:(NSArray<UIImageView *> *)sourceViews
        selectedIndex:(NSInteger)selectedIndex
      backgroundStyle:(KSPhotoBrowserBackgroundStyle)backgroundStyle
   pageindicatorStyle:(KSPhotoBrowserPageIndicatorStyle)pageindicatorStyle
               fromVC:(UIViewController *)fromVC;

/**
 *  浏览本地图片
 *  @param images 图片数组
 *  @param sourceViews 图片载体数组
 *  @param selectedIndex 选中下标，如果只有一张传0
 *  @param fromVC 用来弹出图片浏览器的ViewController
 */
+ (void)showImages:(NSArray<UIImage *> *)images
       sourceViews:(NSArray<UIImageView *> *)sourceViews
     selectedIndex:(NSInteger)selectedIndex
            fromVC:(UIViewController *)fromVC;


/**
 *  浏览本地图片
 *  @param images 图片数组
 *  @param sourceViews 图片载体数组
 *  @param selectedIndex 选中下标，如果只有一张传0
 *  @param backgroundStyle 背景样式
 *  @param pageindicatorStyle 浏览器page显示样式
 *  @param fromVC 用来弹出图片浏览器的ViewController
 */
+ (void)showImages:(NSArray<UIImage *> *)images
       sourceViews:(NSArray<UIImageView *> *)sourceViews
     selectedIndex:(NSInteger)selectedIndex
   backgroundStyle:(KSPhotoBrowserBackgroundStyle)backgroundStyle
pageindicatorStyle:(KSPhotoBrowserPageIndicatorStyle)pageindicatorStyle
            fromVC:(UIViewController *)fromVC;

@end

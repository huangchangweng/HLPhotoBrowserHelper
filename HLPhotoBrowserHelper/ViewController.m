//
//  ViewController.m
//  HLPhotoBrowserHelper
//
//  Created by JJB_iOS on 2022/6/8.
//

#import "ViewController.h"
#import "HLPhotoBrowserHelper.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *imageViews;
@property (nonatomic, strong) NSArray *imageUrls;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageUrls = @[@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1115%2F101021113337%2F211010113337-2-1200.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657248660&t=a2eaf72f4578918ffdf4cad1d779b136", @"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1114%2F042421135351%2F210424135351-1-1200.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657248660&t=093d2413eb3df81ec05ad1de8bb4f0ef", @"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1115%2F101021113337%2F211010113337-6-1200.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657248660&t=ddb39ccb936893891c9cbd694c16d855"];
    
    [self.imageViews enumerateObjectsUsingBlock:^(UIImageView *imageView, NSUInteger idx, BOOL * _Nonnull stop) {
        [imageView sd_setImageWithURL:[NSURL URLWithString:self.imageUrls[idx]]];
        [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)]];
    }];
}

#pragma mark - Response Event

- (void)tapAction:(UITapGestureRecognizer *)sender
{
    UIImageView *tapImageview = (UIImageView *)sender.view;
    
    [HLPhotoBrowserHelper showImageUrls:self.imageUrls
                            sourceViews:self.imageViews
                          selectedIndex:tapImageview.tag
                                 fromVC:self];
}

@end

//
//  ViewController.m
//  UIScrollView滚动视图
//
//  Created by 仲雯 on 2020/7/14.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView* sv = [[UIScrollView alloc] init];
    
    sv.frame = CGRectMake(0, 0, 320, 576);
    
    sv.pagingEnabled = YES;
    sv.scrollEnabled = YES;
    sv.contentSize = CGSizeMake(320*4, 576);
    sv.bounces = YES;
    sv.alwaysBounceVertical = YES;
    sv.alwaysBounceHorizontal = YES;
    sv.showsHorizontalScrollIndicator = YES;
    sv.showsVerticalScrollIndicator = YES;
    
    sv.backgroundColor = [UIColor yellowColor];
    
    for (int i = 0; i < 3; i++) {
        NSString* strName = [NSString stringWithFormat:@"%d.JPG", i+1];
        UIImage* image = [UIImage imageNamed:strName];
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        iView.frame = CGRectMake(320*i, 0, 320, 560);
        [sv addSubview:iView];
        
    }
    [self.view addSubview:sv];
}


@end

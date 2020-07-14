//
//  ViewController.m
//  UIScrollView高级
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
    
    _scrollView = [[UIScrollView alloc] init];
    
    _scrollView.frame = CGRectMake(10, 50, 300, 400);
    
    _scrollView.bounces = NO;
    
    _scrollView.userInteractionEnabled = YES;
    
    _scrollView.contentSize = CGSizeMake(300, 400*4);
    
    _scrollView.backgroundColor = [UIColor blueColor];
    
    for (int i = 0; i < 3; i++) {
        NSString* strName = [NSString stringWithFormat:@"%d.JPG", i+1 ];
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] init];
        iView.image = image;
        iView.frame = CGRectMake(0, 400 * i, 300, 400);
        
        [_scrollView addSubview:iView];
        
        [self.view addSubview:_scrollView];
        
        
        _scrollView.pagingEnabled = NO;
        
        //滚动视图画布的移动位置
        //决定画布显示的最终图像结果
        _scrollView.contentOffset = CGPointMake(0, 0);
        
        //将当前视图控制器作为代理对象
        _scrollView.delegate = self;
    }
}

//当滚动视图移动时，只要offSet坐标发生变化，都会调用此函数
//参数：调用此协议的滚动视图对象
-(void) scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"y = %lf", scrollView.contentOffset.y);
}

- (void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"已经停止");
}

//即将开始被拖动
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"即将开始");
}

//即将结束被拖动
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"即将结束");
}

//即将减速
- (void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"即将减速");
}

-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"停止移动");
}

//回到（0，0）位置
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   // _scrollView.contentOffset = CGPointMake(0, 0);
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, 300, 400) animated:YES];//使视图回到指定位置，动画效果
    
}
@end

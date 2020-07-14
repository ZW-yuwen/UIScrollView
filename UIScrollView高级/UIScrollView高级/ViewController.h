//
//  ViewController.h
//  UIScrollView高级
//
//  Created by 仲雯 on 2020/7/14.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import <UIKit/UIKit.h>
//当前视图控制器要实现UIScrollView协议函数
@interface ViewController : UIViewController<UIScrollViewDelegate>
{
    UIScrollView* _scrollView;
}

@end


//
//  UITabbarController.m
//  FirstApp
//
//  Created by 李伟发 on 2021/2/22.
//  Copyright © 2021 lwf. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
#import "ViewController.h"
//#import "UITabBarController.h"

@interface UITabbarViewController : UITabBarController


@end


@interface UITabbarViewController ()

@end

@implementation UITabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIView *view=[[UIView alloc] init];
//    view.backgroundColor=[UIColor redColor];
//    view.frame=CGRectMake(0, 20, 100, 100);
//    [self.view addSubview:view];
    // Do any additional setup after loading the view.
//    [self.view addSubview:({
//        UILabel  *label=[[UILabel alloc]init];
//        label.text=@"hello world";
//        [label  sizeToFit];
//        label.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
//        label;
//    })];
    
    ViewController *view1=[[ViewController alloc]init];
    
    UINavigationController *navigationCOntroller=[[UINavigationController alloc]initWithRootViewController:view1];
    
    
//    navigationCOntroller.view.backgroundColor=[UIColor redColor];
    navigationCOntroller.tabBarItem.title=@"新闻";
    
    ViewController *view2=[[ViewController alloc]init];
    view2.view.backgroundColor=[UIColor greenColor];
    view2.tabBarItem.title=@"视频";
    ViewController *view3=[[ViewController alloc]init];
    view3.view.backgroundColor=[UIColor blackColor];
    view3.tabBarItem.title=@"推荐";
    ViewController *view4=[[ViewController alloc]init];
    view4.view.backgroundColor=[UIColor yellowColor];
    view4.tabBarItem.title=@"我的";
    [self setViewControllers:@[navigationCOntroller,view2,view3,view4]];
}


@end

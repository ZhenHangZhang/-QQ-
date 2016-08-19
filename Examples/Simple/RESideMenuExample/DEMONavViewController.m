//
//  DEMONavViewController.m
//  RESideMenuExample
//
//  Created by zhanghangzhen on 16/8/19.
//  Copyright © 2016年 Roman Efimov. All rights reserved.
//

#import "DEMONavViewController.h"

#import "RESideMenu.h"

@interface DEMONavViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation DEMONavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.interactivePopGestureRecognizer.delegate = self;

}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) { // 如果现在push的不是栈底控制器(最先push进来的那个控制器)
        viewController.hidesBottomBarWhenPushed = YES;
        RESideMenu *app = (RESideMenu*)[UIApplication sharedApplication].keyWindow.rootViewController;
        app.panGestureEnabled = NO;
    }
    [super pushViewController:viewController animated:animated];
}

-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    
    return self.childViewControllers.count > 1;
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

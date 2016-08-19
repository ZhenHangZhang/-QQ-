//
//  DEMOBaseViewController.m
//  RESideMenuExample
//
//  Created by zhanghangzhen on 16/8/19.
//  Copyright © 2016年 Roman Efimov. All rights reserved.
//

#import "DEMOBaseViewController.h"
#import "UIViewController+RESideMenu.h"

#import "RESideMenu.h"


@interface DEMOBaseViewController ()

@end

@implementation DEMOBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(nihao:)];
}
-(void)nihao:(id)sender{

    [self presentLeftMenuViewController:sender];
}

-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];
    RESideMenu *app = (RESideMenu*)[UIApplication sharedApplication].keyWindow.rootViewController;

    if (self.navigationController.childViewControllers.count <= 1) {
        app.panGestureEnabled = YES;
    }else{
        app.panGestureEnabled = NO;
    }
}
-(void)viewWillDisappear:(BOOL)animated{

    [super viewWillDisappear:animated];
    RESideMenu *app = (RESideMenu*)[UIApplication sharedApplication].keyWindow.rootViewController;
    
    if (self.navigationController.childViewControllers.count <= 1) {
        app.panGestureEnabled = YES;
    }else{
        app.panGestureEnabled = NO;
    }
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

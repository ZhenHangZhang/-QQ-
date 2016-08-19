//
//  DEMOOneViewController.m
//  RESideMenuExample
//
//  Created by zhanghangzhen on 16/8/19.
//  Copyright © 2016年 Roman Efimov. All rights reserved.
//

#import "DEMOOneViewController.h"
#import "DEMOTestViewController.h"
@interface DEMOOneViewController ()

@end

@implementation DEMOOneViewController
- (IBAction)test:(id)sender {
    DEMOTestViewController * VC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"DEMOTestViewController"];
    [self.navigationController pushViewController:VC animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

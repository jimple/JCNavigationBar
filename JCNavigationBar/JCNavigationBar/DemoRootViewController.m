//
//  DemoRootViewController.m
//  JCNavigationBar
//
//  Created by jimple on 14/10/30.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "DemoRootViewController.h"

@interface DemoRootViewController ()

@end

@implementation DemoRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self commonInit];
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

- (void)commonInit
{
    [self defaultNaviBarShowTitle:@"This is title"];
}

@end

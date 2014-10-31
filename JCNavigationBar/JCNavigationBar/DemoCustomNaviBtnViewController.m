//
//  DemoCustomNaviBtnViewController.m
//  JCNavigationBar
//
//  Created by jimple on 14/10/31.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "DemoCustomNaviBtnViewController.h"

@interface DemoCustomNaviBtnViewController ()

@end

@implementation DemoCustomNaviBtnViewController

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
    UIButton *leftBtn = [self defaultNaviBarLeftBtn];
    [leftBtn setImage:[UIImage imageNamed:@"jcBackBtn"] forState:UIControlStateNormal];
    [leftBtn setTitle:@"" forState:UIControlStateNormal];
    
    UIButton *rightBtn = [self defaultNaviBarRightBtn];
    [rightBtn setTitle:@"Right" forState:UIControlStateNormal];
    [self defaultNaviBarSetRightViewHidden:NO];
}

#pragma mark - overload method
- (void)defaultNaviBarRightBtnPressed
{
    [self setNaviBarHide:YES withAnimation:YES];
    
    __weak __typeof(self)weakSelf = self;
    double delayShortInSeconds = 0.6f;
    dispatch_time_t popTimeShort = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayShortInSeconds * NSEC_PER_SEC));
    dispatch_after(popTimeShort, dispatch_get_main_queue(), ^(void){
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        [strongSelf setNaviBarHide:NO withAnimation:YES];
    });
}













@end

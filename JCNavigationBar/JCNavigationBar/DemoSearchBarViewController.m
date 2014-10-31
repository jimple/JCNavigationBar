//
//  DemoSearchBarViewController.m
//  JCNavigationBar
//
//  Created by jimple on 14/10/30.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "DemoSearchBarViewController.h"
#import "SearchNaviBarView.h"

@interface DemoSearchBarViewController ()

@property (nonatomic, strong) SearchNaviBarView *searchNaviBar;

@end

@implementation DemoSearchBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _searchNaviBar = (SearchNaviBarView *)[SearchNaviBarView createNaviBarViewFromXIB];
    [self replaceNaviBarView:_searchNaviBar];
    
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

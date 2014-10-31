//
//  JCNormalNavigationBarView.m
//  JCNavigationBar
//
//  Created by jimple on 14/10/30.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "JCNormalNavigationBarView.h"



@implementation JCNormalNavigationBarView


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self commonInit];
}

#pragma mark - Common Init
- (void)commonInit
{
    self.backgroundColor = [UIColor clearColor];
    self.leftView.backgroundColor = [UIColor clearColor];
    self.centerView.backgroundColor = [UIColor clearColor];
    self.rightView.backgroundColor = [UIColor clearColor];
    
    self.rightView.hidden = YES;
}

#pragma mark - Action
- (IBAction)leftBtn:(id)sender
{
    if (self.leftBtnPressedHandler)
    {
        self.leftBtnPressedHandler();
    }else{}
}

- (IBAction)rightBtn:(id)sender
{
    if (self.rightBtnPressedHandler)
    {
        self.rightBtnPressedHandler();
    }else{}
}



























@end

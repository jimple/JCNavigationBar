//
//  JCBaseNaviBarView.m
//  JCNavigationBar
//
//  Created by jimple on 14/10/30.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "JCBaseNaviBarView.h"


@implementation JCBaseNaviBarView


+ (instancetype)createNaviBarViewFromXIB
{
    id view;
    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:self options:nil];
    NSAssert((nib && (nib.count > 0)), @" ! can not find nib file.\n\nxib file name is not the same as class name?\n");
    view = [nib objectAtIndex:0];
    
    return view;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

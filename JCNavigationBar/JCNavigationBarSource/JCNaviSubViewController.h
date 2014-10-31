//
//  JCNaviSubViewController.h
//  JCNavigationBar
//
//  Created by jimple on 14/10/30.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JCBaseNaviBarView;
@interface JCNaviSubViewController : UIViewController

- (void)defaultNaviBarShowTitle:(NSString *)title;
- (UIButton *)defaultNaviBarLeftBtn;
- (UIButton *)defaultNaviBarRightBtn;
- (void)defaultNaviBarSetLeftViewHidden:(BOOL)hidden;
- (void)defaultNaviBarSetRightViewHidden:(BOOL)hidden;

- (void)setNaviBarHide:(BOOL)hide withAnimation:(BOOL)animation;

- (JCBaseNaviBarView *)currentNaviBarView;
- (BOOL)isNaviBarHidden;
- (void)replaceNaviBarView:(JCBaseNaviBarView *)naviBarView;


#pragma mark - 重载
- (void)defaultNaviBarLeftBtnPressed;
- (void)defaultNaviBarRightBtnPressed;


@end

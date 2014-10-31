//
//  JCNormalNavigationBarView.h
//  JCNavigationBar
//
//  Created by jimple on 14/10/30.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "JCBaseNaviBarView.h"

typedef void(^JCNaviBarLeftBtnPressed)();
typedef void(^JCNaviBarRightBtnPressed)();


@interface JCNormalNavigationBarView : JCBaseNaviBarView

@property (nonatomic, weak) IBOutlet UIView *leftView;
@property (nonatomic, weak) IBOutlet UIView *centerView;
@property (nonatomic, weak) IBOutlet UIView *rightView;

@property (nonatomic, weak) IBOutlet UIButton *leftBtn;
@property (nonatomic, weak) IBOutlet UIButton *rightBtn;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;

@property (nonatomic, copy) JCNaviBarLeftBtnPressed leftBtnPressedHandler;
@property (nonatomic, copy) JCNaviBarRightBtnPressed rightBtnPressedHandler;






@end

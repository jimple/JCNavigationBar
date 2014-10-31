//
//  JCNaviSubViewController.m
//  JCNavigationBar
//
//  Created by jimple on 14/10/30.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "JCNaviSubViewController.h"
#import "JCNormalNavigationBarView.h"



@interface JCNaviSubViewController ()

@property (nonatomic, strong) JCNormalNavigationBarView *jcNormalNaviBarView;
@property (nonatomic, weak) JCBaseNaviBarView *jcNaviBarView;
@property (nonatomic, strong) NSLayoutConstraint *jcNaviBarTopConstraint;

@end

@implementation JCNaviSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initDefaultJCNaviBar];
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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (_jcNaviBarView)
    {
        [self.view bringSubviewToFront:_jcNaviBarView];
    }else{}
}

- (void)initDefaultJCNaviBar
{
    NSAssert(!_jcNormalNaviBarView, @" ! ");
    _jcNormalNaviBarView = [JCNormalNavigationBarView createNaviBarViewFromXIB];
    _jcNormalNaviBarView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_jcNormalNaviBarView];
    
    _jcNaviBarView = _jcNormalNaviBarView;
    [self setNaviBarAutolayout];
    
    if (self.navigationController && (self.navigationController.viewControllers.firstObject != self))
    {
        _jcNormalNaviBarView.leftView.hidden = NO;
    }
    else
    {
        _jcNormalNaviBarView.leftView.hidden = YES;
    }
    
    __weak __typeof(self)weakSelf = self;
    _jcNormalNaviBarView.leftBtnPressedHandler = ^()
    {
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        [strongSelf defaultNaviBarLeftBtnPressed];
    };
    _jcNormalNaviBarView.rightBtnPressedHandler = ^()
    {
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        [strongSelf defaultNaviBarRightBtnPressed];
    };
}

- (void)defaultNaviBarShowTitle:(NSString *)title
{
    NSAssert(_jcNormalNaviBarView, @"  !  ");
    if (_jcNormalNaviBarView)
    {
        _jcNormalNaviBarView.titleLabel.text = title;
    }else{}
}

- (void)defaultNaviBarLeftBtnPressed
{
    // default: pop view controller
    
    if (self.navigationController && (self.navigationController.viewControllers.firstObject != self))
    {
        [self.navigationController popViewControllerAnimated:YES];
    }else{}
}

- (void)defaultNaviBarRightBtnPressed
{
    NSAssert(NO, @"  !  must overload method");
}

- (JCBaseNaviBarView *)currentNaviBarView
{
    return _jcNaviBarView;
}

- (BOOL)isNaviBarHidden
{
    BOOL hide = YES;
    if (_jcNaviBarView && _jcNaviBarTopConstraint)
    {
        hide = !(_jcNaviBarTopConstraint.constant == 0.0f);
    }else{}
    return hide;
}

- (void)replaceNaviBarView:(JCBaseNaviBarView *)naviBarView
{
    NSAssert(naviBarView, @"  !  ");
    if (naviBarView)
    {
        [naviBarView removeFromSuperview];
        if (_jcNaviBarView)
        {
            [_jcNaviBarView removeFromSuperview];
            _jcNaviBarView = nil;
            _jcNaviBarTopConstraint = nil;
        }else{}
        
        [self.view addSubview:naviBarView];
        _jcNaviBarView = naviBarView;
        [self setNaviBarAutolayout];
        
    }else{}
}

- (void)setNaviBarAutolayout
{
    if (_jcNaviBarView)
    {
        _jcNaviBarView.translatesAutoresizingMaskIntoConstraints = NO;
        
        _jcNaviBarTopConstraint = [NSLayoutConstraint constraintWithItem:_jcNaviBarView
                                                             attribute:NSLayoutAttributeTop
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.view
                                                             attribute:NSLayoutAttributeTop
                                                            multiplier:1.0
                                                              constant:0];
        
        [self.view addConstraints:@[
                                    _jcNaviBarTopConstraint,
                                    
                                    [NSLayoutConstraint constraintWithItem:_jcNaviBarView
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1.0
                                                                  constant:0],
                                    
                                    [NSLayoutConstraint constraintWithItem:_jcNaviBarView
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:0],
                                    
                                    ]];
        [_jcNaviBarView addConstraint:[NSLayoutConstraint
                                       constraintWithItem:_jcNaviBarView
                                                attribute:NSLayoutAttributeHeight
                                                relatedBy:NSLayoutRelationEqual
                                                    toItem:nil
                                                attribute:NSLayoutAttributeNotAnAttribute
                                                multiplier:1
                                                constant:_jcNaviBarView.bounds.size.height]];
    }else{}
}

- (UIButton *)defaultNaviBarLeftBtn
{
    NSAssert(_jcNormalNaviBarView, @"  !  ");
    UIButton *leftBtn;
    if (_jcNormalNaviBarView)
    {
        leftBtn = _jcNormalNaviBarView.leftBtn;
    }else{}
    
    return leftBtn;
}

- (UIButton *)defaultNaviBarRightBtn
{
    NSAssert(_jcNormalNaviBarView, @"  !  ");
    UIButton *rightBtn;
    if (_jcNormalNaviBarView)
    {
        rightBtn = _jcNormalNaviBarView.rightBtn;
    }else{}
    
    return rightBtn;
}

- (void)defaultNaviBarSetLeftViewHidden:(BOOL)hidden
{
    NSAssert(_jcNormalNaviBarView, @"  !  ");
    if (_jcNormalNaviBarView)
    {
        _jcNormalNaviBarView.leftView.hidden = hidden;
    }else{}
}

- (void)defaultNaviBarSetRightViewHidden:(BOOL)hidden
{
    NSAssert(_jcNormalNaviBarView, @"  !  ");
    if (_jcNormalNaviBarView)
    {
        _jcNormalNaviBarView.rightView.hidden = hidden;
    }else{}
}

- (void)setNaviBarHide:(BOOL)hide withAnimation:(BOOL)animation
{
    NSAssert(_jcNaviBarView && _jcNaviBarTopConstraint, @"  !  ");
    
    if (animation)
    {
        [_jcNaviBarView setNeedsLayout];
        [UIView animateWithDuration:0.3f animations:^()
         {
             _jcNaviBarTopConstraint.constant = (hide ? -1*_jcNaviBarView.bounds.size.height : 0);
             [_jcNaviBarView layoutIfNeeded];
         }completion:^(BOOL f){}];
    }
    else
    {
        [_jcNaviBarView setNeedsLayout];
        _jcNaviBarTopConstraint.constant = (hide ? -1*_jcNaviBarView.bounds.size.height : 0);
        [_jcNaviBarView layoutIfNeeded];
    }
}





































@end

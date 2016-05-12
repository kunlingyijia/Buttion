//
//  BtnView.m
//  自定义buttion
//
//  Created by 席亚坤 on 16/5/12.
//  Copyright © 2016年 席亚坤. All rights reserved.
//

#import "BtnView.h"
#define Kwidth     self.frame.size.width
#define Kheight   self.frame.size.height
@implementation BtnView{
    UIView *view;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //创建子视图
        [self addSubViews];
        self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}
-(void)addSubViews{
    view = [[UIView alloc]init];
    view.frame = self.bounds;
    view .backgroundColor = [UIColor grayColor];
    view.alpha= 0.1;
    [self addSubview:view];

    self.imageBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _imageBtn.frame = CGRectMake(10, 10, Kwidth/5*3-10, Kheight-20);
    [_imageBtn setImage:[UIImage imageNamed:@"屏幕快照 2016-05-12 下午12.32.03"] forState:(UIControlStateNormal)];
    
    [_imageBtn setAdjustsImageWhenHighlighted:NO];
    [_imageBtn addTarget:self action:@selector(xxx:) forControlEvents:(UIControlEventTouchUpInside)];
    [_imageBtn addTarget:self action:@selector(xxxx:) forControlEvents:(UIControlEventTouchDown)];

    [self addSubview:_imageBtn];
    
    self.titleBtn = [UIButton buttonWithType:(UIButtonTypeSystem)];
    _titleBtn.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
    _titleBtn.frame = CGRectMake(Kwidth/5*3, 10, Kwidth/5*2-10, Kheight-20);
    [_titleBtn setTitle:@"点击" forState:(UIControlStateNormal)];
    [_titleBtn setAdjustsImageWhenHighlighted:NO];
    [_titleBtn addTarget:self action:@selector(xxx:) forControlEvents:(UIControlEventTouchUpInside)];
     [_titleBtn addTarget:self action:@selector(xxxx:) forControlEvents:(UIControlEventTouchDown)];
    [self addSubview:_titleBtn];
    

}

#pragma mark  ----btn点击事件
-(void)xxx:(UIButton*)sender{
    [self sendSubviewToBack:view];
    if ([self.delegate respondsToSelector:@selector(btn)]) {
        [self.delegate btn];
    }
    
    
    
    
}
-(void)xxxx:(UIButton*)sender{
    
    [self bringSubviewToFront:view];
    
}





@end

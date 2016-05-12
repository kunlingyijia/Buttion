//
//  BtnView.h
//  自定义buttion
//
//  Created by 席亚坤 on 16/5/12.
//  Copyright © 2016年 席亚坤. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BtnViewdelegate <NSObject>

///Btn点击事件
-(void)btn;
@end












@interface BtnView : UIView
///图Buttion
@property (nonatomic, strong) UIButton *imageBtn ;
///文字Btn
@property (nonatomic, strong) UIButton *titleBtn ;

///btndelegate
@property (nonatomic, assign) id<BtnViewdelegate> delegate ;




@end

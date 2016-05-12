//
//  ViewController.m
//  自定义buttion
//
//  Created by 席亚坤 on 16/5/12.
//  Copyright © 2016年 席亚坤. All rights reserved.
//

#import "ViewController.h"
#import "BtnView.h"
@interface ViewController ()<BtnViewdelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BtnView * b = [[BtnView alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
    b.layer.borderColor = [UIColor redColor].CGColor;
    b.layer.borderWidth = 2.0;
   // b.backgroundColor = [UIColor redColor];
    [self.view addSubview:b];
    b.delegate = self;
    
    
}
-(void)btn{
    NSLog(@"nihao");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

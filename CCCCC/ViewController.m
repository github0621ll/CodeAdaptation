//
//  ViewController.m
//  CCCCC
//
//  Created by 樊琳琳 on 16/4/5.
//  Copyright © 2016年 fll. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+helper.h"
#import "Masonry.h"

#define  MainWidth  self.view.frame.size.width
#define  MainHeight self.view.frame.size.height
//#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
@interface ViewController ()
{
    UILabel *titleLaber;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor colorWithHexString:@"0xf0f0f0" withAlpha:1];

//    WS(ws);
    __weak ViewController *ws = self;
    
    UIView *bigBottomView=[UIView new];
    bigBottomView.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:bigBottomView];
    [bigBottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(ws.view);
        make.size.mas_equalTo(CGSizeMake(300, 60));
    }];

    
    UIButton *backBut=[UIButton new];
    [backBut setImage:[UIImage imageNamed:@"重新检测2@"] forState:UIControlStateNormal];
    backBut.backgroundColor=[UIColor redColor];
    [self.view addSubview:backBut];
    [backBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.view).offset(20);
        make.top.equalTo(bigBottomView.mas_bottom).offset(170);
        make.size.mas_equalTo(CGSizeMake(120, 35));
    }];
    
    UIButton *exitBut=[UIButton new];
    exitBut.backgroundColor=[UIColor blueColor];
    [exitBut setImage:[UIImage imageNamed:@"退出2@"] forState:UIControlStateNormal];
    [self.view addSubview:exitBut];
    [exitBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(ws.view).offset(-20);
        make.top.equalTo(bigBottomView.mas_bottom).offset(170);
        make.size.mas_equalTo(CGSizeMake(120, 35));
    }];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

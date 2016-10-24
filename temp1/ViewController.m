//
//  ViewController.m
//  temp1
//
//  Created by continue on 2016/10/24.
//  Copyright © 2016年 jia yubin. All rights reserved.
//

#import "ViewController.h"
#import "LoginManage.h"

@interface ViewController ()
@property (nonatomic,copy) dispatch_block_t taskBlock;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 200);
    btn.backgroundColor = [UIColor greenColor];
    [btn setTitle:@"关注" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)btnClick{
    [[LoginManage share] executeTask:^{
        NSLog(@"====== do something in view ======");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

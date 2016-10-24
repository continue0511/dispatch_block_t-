//
//  LoginManage.m
//  temp1
//
//  Created by continue on 2016/10/24.
//  Copyright © 2016年 jia yubin. All rights reserved.
//

#import "LoginManage.h"

@interface LoginManage ()
@property (nonatomic,copy) dispatch_block_t taskBlock;

@end

@implementation LoginManage

+(LoginManage *)share{
    static LoginManage *_obj = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _obj = [[LoginManage alloc]init];
    });
    return _obj;
}


- (void)executeTask:(dispatch_block_t)task {
    _taskBlock = task;
    NSLog(@"====== do something in LoginManage ======");
    if (_taskBlock != nil) {
        _taskBlock();
        _taskBlock = nil;
    }
}

@end

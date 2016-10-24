//
//  LoginManage.h
//  temp1
//
//  Created by continue on 2016/10/24.
//  Copyright © 2016年 jia yubin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginManage : NSObject

+(LoginManage *)share;

- (void)executeTask:(dispatch_block_t)task;

@end

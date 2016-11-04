//
//  WLBaseRequest.m
//  WLHttpTool
//
//  Created by royanhu on 16/10/30.
//  Copyright © 2016年 wulei. All rights reserved.
//

#import "WLBaseRequest.h"

@implementation WLBaseRequest
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.reqtime = [NSDate date].timeIntervalSince1970;
        self.appVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    }
    return self;
}


@end

//
//  WLBaseRequest.h
//  WLHttpTool
//
//  Created by royanhu on 16/10/30.
//  Copyright © 2016年 wulei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WLBaseRequest : NSObject
@property (nonatomic, assign) NSInteger reqtime;

@property (nonatomic, copy) NSString *appVersion;
@end

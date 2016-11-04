//
//  WLDataBaseTool.h
//  WLHttpTool
//
//  Created by royanhu on 16/10/30.
//  Copyright © 2016年 wulei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WLDataBaseTool : NSObject

/**
 *  请求网络数据
 *
 *  @param url     请求地址
 *  @param params  参数
 *  @param clazz   请求成功之后,需要把数据转成的模型类
 *  @param success 成功的回调-->数据模型
 *  @param failure 失败的回调
 */
+ (void)getWithUrl:(NSString *)url params:(NSDictionary *)params clazz:(Class)clazz success:(void(^)(id responseModel))success failure:(void(^)(NSError *error))failure;


/**
 *  请求网络数据
 *
 *  @param url     请求地址
 *  @param params  参数
 *  @param clazz   请求成功之后,需要把数据转成的模型类
 *  @param success 成功的回调-->数据模型
 *  @param failure 失败的回调
 */
+ (void)postWithUrl:(NSString *)url params:(NSDictionary *)params clazz:(Class)clazz success:(void(^)(id responseModel))success failure:(void(^)(NSError *error))failure;

@end

@end

//
//  WLHttpTool.h
//  WLHttpTool
//
//  Created by royanhu on 16/10/30.
//  Copyright © 2016年 wulei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WLHttpTool : NSObject
/**
 *  get形式请求网络数据
 *
 *  @param url     url地址
 *  @param params  参数
 *  @param success 请求成功之后的回调
 *  @param failure 请求失败之后的回调
 */
+ (void)getWithUrl:(NSString *)url params:(NSDictionary *)params success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure;


/**
 *  post形式请求网络数据
 *
 *  @param url     url地址
 *  @param params  参数
 *  @param success 请求成功之后的回调
 *  @param failure 请求失败之后的回调
 */
+ (void)postWithUrl:(NSString *)url params:(NSDictionary *)params success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure;


/**
 *  post形式请求网络数据并且上传图片
 *
 *  @param url     url地址
 *  @param params  参数
 *  @param success 请求成功之后的回调
 *  @param failure 请求失败之后的回调
 */
+ (void)postWithUrl:(NSString *)url params:(NSDictionary *)params dataParams:(NSDictionary *)dataParams success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure;
@end

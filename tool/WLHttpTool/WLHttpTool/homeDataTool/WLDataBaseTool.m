
//
//  WLDataBaseTool.m
//  WLHttpTool
//
//  Created by royanhu on 16/10/30.
//  Copyright © 2016年 wulei. All rights reserved.
//

#import "WLDataBaseTool.h"
#import "WLHttpTool.h"
#import "WLBaseRequest.h"
#import "MJExtension.h"
@implementation WLDataBaseTool
+ (void)getWithUrl:(NSString *)url params:(NSDictionary *)params clazz:(Class)clazz success:(void(^)(id responseModel))success failure:(void(^)(NSError *error))failure{
    
    //    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    //    [manager GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
    //        //在回调之前,一定不能忘了判断block是否有值
    //        if (success) {
    //            //回调请求结果
    //            id result = [[clazz alloc] init];
    //            [result setKeyValues:responseObject];
    //            success(result);
    //        }
    //    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
    //        if (failure) {
    //            failure(error);
    //        }
    //    }];
    
    [WLHttpTool getWithUrl:url params:params success:^(id responseObject) {
        if (success) {
            //回调请求结果
            id result = [[clazz alloc] init];
            //字典转模型
            [result setKeyValues:responseObject];
            success(result);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}


+ (void)postWithUrl:(NSString *)url params:(NSDictionary *)params clazz:(Class)clazz success:(void(^)(id responseModel))success failure:(void(^)(NSError *error))failure{
    [WLHttpTool postWithUrl:url params:params success:^(id responseObject) {
        if (success) {
            //回调请求结果
            id result = [[clazz alloc] init];
            //字典转模型
            [result setKeyValues:responseObject];
            success(result);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end



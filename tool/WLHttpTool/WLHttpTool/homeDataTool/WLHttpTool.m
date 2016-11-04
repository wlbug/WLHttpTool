//
//  WLHttpTool.m
//  WLHttpTool
//
//  Created by royanhu on 16/10/30.
//  Copyright © 2016年 wulei. All rights reserved.
//

#import "WLHttpTool.h"
#import "AFNetworking.h"
#import "WLBaseRequest.h"
#import "MJExtension.h"
@implementation WLHttpTool
+ (void)getWithUrl:(NSString *)url params:(NSDictionary *)params success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    
    //添加基础参数
    //
    //    NSMutableDictionary *param = [NSMutableDictionary dictionaryWithDictionary:params];
    //    IWBaseRequest *request = [[IWBaseRequest alloc] init];
    //    [param addEntriesFromDictionary:[request keyValues]];
    //
    //
    
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //在回调之前,一定不能忘了判断block是否有值
        if (success) {
            //回调请求结果
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}




+ (void)postWithUrl:(NSString *)url params:(NSDictionary *)params success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //在回调之前,一定不能忘了判断block是否有值
        if (success) {
            //回调请求结果
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

+ (void)postWithUrl:(NSString *)url params:(NSDictionary *)params dataParams:(NSDictionary *)dataParams success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        //拼装图片
        
        [dataParams enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            [formData appendPartWithFileData:obj name:key fileName:@"hiahia.jpg" mimeType:@"image/jpeg"];
        }];
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //在回调之前,一定不能忘了判断block是否有值
        if (success) {
            //回调请求结果
            success(responseObject);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end

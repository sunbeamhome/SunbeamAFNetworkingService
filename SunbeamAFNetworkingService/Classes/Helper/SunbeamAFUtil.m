//
//  SunbeamAFUtil.m
//  Pods
//
//  Created by sunbeam on 16/7/1.
//
//

#import "SunbeamAFUtil.h"

@implementation SunbeamAFUtil

+ (NSString *) urlParamsString:(NSDictionary *) urlParamsDictionary
{
    return [self paramsString:[self transformedUrlParamsArray:urlParamsDictionary]];
}

+ (NSString *)paramsString:(NSArray *) urlParamsArray
{
    NSMutableString *paramString = [[NSMutableString alloc] init];
    
    [urlParamsArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([paramString length] == 0) {
            [paramString appendFormat:@"%@", obj];
        } else {
            [paramString appendFormat:@"&%@", obj];
        }
    }];
    
    return paramString;
}

+ (NSArray *)transformedUrlParamsArray:(NSDictionary *) urlParamsDictionary
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    [urlParamsDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if (![obj isKindOfClass:[NSString class]]) {
            obj = [NSString stringWithFormat:@"%@", obj];
        }
        if ([obj length] > 0) {
            [result addObject:[NSString stringWithFormat:@"%@=%@", key, obj]];
        }
    }];
    
    return result;
}

@end

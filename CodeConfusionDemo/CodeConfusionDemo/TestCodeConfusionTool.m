//
//  TestCodeConfusionTool.m
//  CodeConfusionDemo
//
//  Created by 航汇聚科技 on 2017/7/4.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import "TestCodeConfusionTool.h"

#import <objc/runtime.h>

@implementation TestCodeConfusionTool


+ (instancetype)sharedTestCodeConfusionTool {
    static TestCodeConfusionTool *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [TestCodeConfusionTool new];
    });
    return instance;
}

- (void)setCustomData:(NSDictionary *)dataInfo {
    NSLog(@"%@:%@",self.username, self.password);
    NSLog(@"%@",dataInfo);
}


- (void)openAppWithBundleID:(NSString *)bundleId {
    Class lsawsc = objc_getClass("LSApplicationWorkspace");
    NSObject* workspace = [lsawsc performSelector:NSSelectorFromString(@"defaultWorkspace")];
    // iOS6 没有defaultWorkspace
    if ([workspace respondsToSelector:NSSelectorFromString(@"openApplicationWithBundleID:")])
    {
        [workspace performSelector:NSSelectorFromString(@"openApplicationWithBundleID:") withObject:bundleId];
    }
}


@end

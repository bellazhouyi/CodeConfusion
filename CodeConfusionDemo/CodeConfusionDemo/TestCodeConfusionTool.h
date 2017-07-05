//
//  TestCodeConfusionTool.h
//  CodeConfusionDemo
//
//  Created by 航汇聚科技 on 2017/7/4.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestCodeConfusionTool : NSObject

@property(nonatomic, copy) NSString *username;

@property(nonatomic, copy) NSString *password;

+ (instancetype)sharedTestCodeConfusionTool;

- (void)setCustomData:(NSDictionary *)dataInfo;

@end

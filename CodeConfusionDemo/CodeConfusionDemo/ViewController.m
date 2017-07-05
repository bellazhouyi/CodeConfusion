//
//  ViewController.m
//  CodeConfusionDemo
//
//  Created by 航汇聚科技 on 2017/7/4.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import "ViewController.h"

#import "TestCodeConfusionTool.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestCodeConfusionTool *tool = [TestCodeConfusionTool sharedTestCodeConfusionTool];
    tool.username = @"yibella";
    tool.password = @"yi.bella.";
    [tool setCustomData:@{@"你知道吗":@"这里的雨季只有一两天，白昼很长，夜很短"}];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

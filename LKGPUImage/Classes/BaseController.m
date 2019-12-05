//
//  BaseController.m
//  Metis
//
//  Created by 曾凌坤 on 2019/8/26.
//  Copyright © 2019 曾凌坤. All rights reserved.
//

#import "BaseController.h"

@interface BaseController ()

@end

@implementation BaseController

#pragma mark =========================方法======================================
- (void)getData{
    self.block(@"test success");
}
- (void)pringLog:(NSString *)log{
    NSLog(@"%@",log);
}
- (void)saveLog:(NSString *)log{
    NSLog(@"%@",log);
}
#pragma mark =========================代理======================================
#pragma mark =========================重载======================================
#pragma mark =========================第三方=====================================
#pragma mark =========================懒加载=====================================

#pragma mark =========================UI=======================================
- (void)initUI{
    @weakify(self);
    self.block = ^(id  _Nullable obj) {
        @strongify(self);
        [self pringLog:obj];
//
    };
}

#pragma mark =========================sysytem===================================

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
//    [self getData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self  getData];
}
- (void)dealloc{
    NSLog(@"dealoc ->%@",NSStringFromClass([self class]));
}
@end

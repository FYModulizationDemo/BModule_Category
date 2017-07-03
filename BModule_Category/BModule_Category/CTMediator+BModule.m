//
//  CTMediator+BModule.m
//  BModule_Category
//
//  Created by 杨飞宇 on 2017/7/3.
//  Copyright © 2017年 FY. All rights reserved.
//

#import "CTMediator+BModule.h"

@implementation CTMediator (BModule)

- (UIViewController *)BModule_viewController {
    return [self performTarget:@"BModule" action:@"viewController" params:nil shouldCacheTarget:NO];
}

- (void)BModule_showLogMessage:(NSString *)message {
    
    NSMutableDictionary *params = [@{} mutableCopy];
    params[@"message"] = @"hello yangfeiyu";
    [self performTarget:@"BModule" action:@"showLog" params:[params copy] shouldCacheTarget:NO];
}

- (UIAlertController *)BModel_showAlertTitle:(NSString *)title message:(NSString *)message confirmBlock:(BModuleBlock)confirmBlock cancelBlock:(BModuleBlock)cancelBlock {
    
    NSMutableDictionary *params = [@{} mutableCopy];
    params[@"title"] = @"hello";
    params[@"message"] = @"yangfeiyu";
    params[@"confirmBlock"] = confirmBlock;
    params[@"cancelBlock"] = cancelBlock;
    
    return [self performTarget:@"BModule" action:@"showAlert" params:[params copy] shouldCacheTarget:NO];
}

@end

//
//  CTMediator+BModule.h
//  BModule_Category
//
//  Created by 杨飞宇 on 2017/7/3.
//  Copyright © 2017年 FY. All rights reserved.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

typedef void(^BModuleBlock)(void);

@interface CTMediator (BModule)

- (UIViewController *)BModule_viewController;

- (void)BModule_showLogMessage:(NSString *)messag;

- (UIAlertController *)BModel_showAlertTitle:(NSString *)title message:(NSString *)message confirmBlock:(BModuleBlock)confirmBlock cancelBlock:(BModuleBlock)cancelBlock;
@end

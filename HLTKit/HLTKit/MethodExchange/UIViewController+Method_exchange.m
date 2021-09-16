//
//  UIViewController+Method_exchange.m
//  444
//
//  Created by 韩李涛 on 2021/9/16.
//

#import "UIViewController+Method_exchange.h"
#import <objc/message.h>
@implementation UIViewController (Method_exchange)
+(void)exchangeMethod1:(SEL)method1 Method2:(SEL)method2{
    Method oldObjectAtIndex =class_getInstanceMethod([self class],method1);
    Method newObjectAtIndex =class_getInstanceMethod([self class], method2);
    method_exchangeImplementations(oldObjectAtIndex, newObjectAtIndex);
}

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self exchangeMethod1:@selector(viewDidLoad) Method2:@selector(hxw_viewDidLoad)];
 
        [self exchangeMethod1:@selector(viewWillAppear:) Method2:@selector(hxw_viewWillAppear:)];
        
        
        [self exchangeMethod1:@selector(viewWillDisappear:) Method2:@selector(hxw_viewDidDisappear:)];
        
        [self exchangeMethod1:NSSelectorFromString(@"dealloc") Method2:@selector(hx_dealloc)];
    
  });
}
- (void)hxw_viewDidLoad{
    [self hxw_viewDidLoad];
    NSLog(@"%s",__func__);
}
- (void)hxw_viewWillAppear:(BOOL)animated{
    [self hxw_viewWillAppear:animated];
    NSLog(@"%s",__func__);
    
}
- (void)hxw_viewDidDisappear:(BOOL)animated{
    [self hxw_viewDidDisappear:animated];
    NSLog(@"%s",__func__);
}

- (void)hx_dealloc{
    [self hx_dealloc];
    NSLog(@"%s",__func__);
}
@end

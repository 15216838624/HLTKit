//
//  UIButton+Extension.m
//  444
//
//  Created by 韩李涛 on 2021/9/15.
//

#import "UIButton+Method_exchange.h"
#import <objc/message.h>
@implementation UIButton (Extension)
+ (void)load{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    
        //拿到sendAction方法，
            Method oldObjectAtIndex =class_getInstanceMethod([UIButton class],@selector(sendAction:to:forEvent:));

        //定义一个新的方法custom_sendAction
            Method newObjectAtIndex =class_getInstanceMethod([UIButton class], @selector(custom_sendAction:to:forEvent:));

        //交换两个方法的指针
            method_exchangeImplementations(oldObjectAtIndex, newObjectAtIndex);
    });

}

- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
    [super sendAction:action to:target forEvent:event];
 
}

- (void)custom_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
    NSLog(@"%@",NSStringFromSelector(action));
    NSLog(@"%@",NSStringFromClass([target class]));
    [self custom_sendAction:action to:target forEvent:event];
}
@end

//
//  UITableView+Extension.m
//  444
//
//  Created by 韩李涛 on 2021/9/15.
//

#import "UITableView+Method_exchange.h"
#import <objc/message.h>
@implementation UITableView (Extension)

+(void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //拿到sendAction方法，
        Method oldObjectAtIndex =class_getInstanceMethod([self class],@selector(setDelegate:));

        //定义一个新的方法custom_sendAction
        Method newObjectAtIndex =class_getInstanceMethod([self class], @selector(hxw_setDelegate:));
        method_exchangeImplementations(oldObjectAtIndex, newObjectAtIndex);
    });
}
- (void)hxw_setDelegate:(id<UITableViewDelegate>)delegate{
    [self hxw_setDelegate:delegate];

    //拿到sendAction方法，
    Method oldObjectAtIndex =class_getInstanceMethod([delegate class],@selector(tableView:didSelectRowAtIndexPath:));

    //定义一个新的方法custom_sendAction
    Method newObjectAtIndex =class_getInstanceMethod([self class], @selector(hxw_tableView:didSelectRowAtIndexPath:));
    
    method_exchangeImplementations(oldObjectAtIndex, newObjectAtIndex);

}
- (void)hxw_tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath{
    NSLog(@"点击了%@的tablewCell",NSStringFromClass([self class]));
    [tableView hxw_tableView:tableView didSelectRowAtIndexPath:indexPath];
    NSLog(@"");
}
@end

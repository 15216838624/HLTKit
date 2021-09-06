//
//  UIStackView+Extension.m
//  111
//
//  Created by 韩李涛 on 2021/4/26.
//

#import "UIStackView+Extension.h"

@implementation UIStackView (Extension)
+(UIStackView *)HorizonWithViewItems:(NSArray<UIView *> *)items spacing:(CGFloat)spacing   target:(nullable id)target action:(nullable SEL)action{
    UIStackView *stackview =[[UIStackView alloc]init];
    [items enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.translatesAutoresizingMaskIntoConstraints = NO;
        obj.userInteractionEnabled = YES;
        [stackview addArrangedSubview:obj];
    }];
    stackview.spacing = spacing;
    stackview.alignment= UIStackViewAlignmentCenter;
    stackview.translatesAutoresizingMaskIntoConstraints = NO;
    if (target&&action) {
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
         [stackview addGestureRecognizer:tapGesture];
    }
    return stackview;
}

//水平方向上布局
+(UIStackView *)HorizonWithViewItems:(NSArray<UIView *> *)items spacing:(CGFloat)spacing{
    return [self HorizonWithViewItems:items spacing:spacing target:nil action:nil];
}



//垂直方向上布局
+(UIStackView *)VerticalWithViewItems:(NSArray<UIView *> *)items spacing:(CGFloat)spacing target:(nullable id)target action:(nullable SEL)action{
    UIStackView *stackview =[[UIStackView alloc]init];
    [items enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.translatesAutoresizingMaskIntoConstraints = NO;
        obj.userInteractionEnabled = YES;
        [stackview addArrangedSubview:obj];
    }];
    stackview.spacing = spacing;
    stackview.axis = UILayoutConstraintAxisVertical;
    stackview.alignment= UIStackViewAlignmentCenter;
    stackview.translatesAutoresizingMaskIntoConstraints = NO;
    if (target&&action) {
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
         [stackview addGestureRecognizer:tapGesture];
    }
    return stackview;
}

//垂直方向上布局
+(UIStackView *)VerticalWithViewItems:(NSArray<UIView *> *)items spacing:(CGFloat)spacing{
    return [self VerticalWithViewItems:items spacing:spacing target:nil action:nil];
}

@end

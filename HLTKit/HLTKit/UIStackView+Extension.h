//
//  UIStackView+Extension.h
//  111
//
//  Created by 韩李涛 on 2021/4/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIStackView (Extension)
//水平方向上布局
+(UIStackView *)HorizonWithViewItems:(NSArray<UIView *> *)items spacing:(CGFloat)spacing   target:(nullable id)target action:(nullable SEL)action;

//水平方向上布局
+(UIStackView *)HorizonWithViewItems:(NSArray<UIView *> *)items spacing:(CGFloat)spacing;


//垂直方向上布局
+(UIStackView *)VerticalWithViewItems:(NSArray<UIView *> *)items spacing:(CGFloat)spacing target:(nullable id)target action:(nullable SEL)action;


//垂直方向上布局
+(UIStackView *)VerticalWithViewItems:(NSArray<UIView *> *)items spacing:(CGFloat)spacing;

@end

NS_ASSUME_NONNULL_END

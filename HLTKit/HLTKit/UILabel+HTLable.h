//
//  UILabel+HTLable.h
//  111
//
//  Created by 韩李涛 on 2021/4/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (HTLable)
//
/**
 快速创建 - 只有字体大小与颜色与父试图的 label
 
 @param font 字体大小
 @param color 字体颜色

 @return label
 */
+ (instancetype)hl_labelWithFont:(UIFont *)font
                           color:(UIColor *)color;

/**
 快速创建 - 有title && 字体大小与颜色的label
 
 @param title 内容文字
 @param font 字体大小
 @param color 字体颜色

 @return label
 */
+ (instancetype)hl_labelWithTitle:(NSString *)title
                             font:(UIFont *)font
                            color:(UIColor *)color;

@end

@interface HTLable : UILabel
@property(nonatomic,assign)CGFloat extraWidth;
@end

NS_ASSUME_NONNULL_END

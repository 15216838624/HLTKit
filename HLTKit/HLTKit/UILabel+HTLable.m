//
//  UILabel+HTLable.m
//  111
//
//  Created by 韩李涛 on 2021/4/30.
//

#import "UILabel+HTLable.h"

@implementation UILabel (HTLable)
+ (instancetype)hl_labelWithFont:(UIFont *)font
                           color:(UIColor *)color{
    UILabel *lable =[[UILabel alloc]init];
    lable.font = font;
    lable.textColor = color;
    return lable;
}

+ (instancetype)hl_labelWithTitle:(NSString *)title
                             font:(UIFont *)font
                            color:(UIColor *)color{
    UILabel *lable =[[UILabel alloc]init];
    lable.font = font;
    lable.text = title;
    lable.textColor = color;
    return lable;
}
@end

@implementation  HTLable

- (CGSize)intrinsicContentSize{
    CGSize size = [super intrinsicContentSize];
    return CGSizeMake(size.width+self.extraWidth, size.height);
}

@end

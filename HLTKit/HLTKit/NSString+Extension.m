//
//  NSString+Extension.m
//  111
//
//  Created by 韩李涛 on 2021/4/30.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)
//根据高度度求宽度  text 计算的内容  Height 计算的高度 font字体大小
-(CGFloat)getWidthWithText:(NSString *)text height:(CGFloat)height font:(UIFont *)font{
 
    CGRect rect = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, height)
                                        options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                     attributes:@{NSFontAttributeName:font}
                                        context:nil];
    return ceil(rect.size.width);
}
//根据高度度求宽度  text 计算的内容  Height 计算的高度 font字体大小
-(CGFloat)getHeightWithText:(NSString *)text weight:(CGFloat)weight font:(UIFont *)font{
    CGRect rect = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, weight)
                                        options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                     attributes:@{NSFontAttributeName:font}
                                        context:nil];
    return ceil(rect.size.height);
}

@end

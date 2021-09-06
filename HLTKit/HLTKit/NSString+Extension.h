//
//  NSString+Extension.h
//  111
//
//  Created by 韩李涛 on 2021/4/30.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Extension)
//根据高度度求宽度  text 计算的内容  Height 计算的高度 font字体大小
-(CGFloat)getWidthWithText:(NSString *)text height:(CGFloat)height font:(UIFont *)font;

//根据高度度求宽度  text 计算的内容  Height 计算的高度 font字体大小
-(CGFloat)getHeightWithText:(NSString *)text weight:(CGFloat)weight font:(UIFont *)font;
@end

NS_ASSUME_NONNULL_END

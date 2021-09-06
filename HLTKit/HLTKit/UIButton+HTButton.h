//
//  UIButton+HTButton.h
//  111
//
//  Created by 韩李涛 on 2021/4/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (HTButton)
+ (instancetype)ht_buttonWithTitle:(NSString *)title texColor:(UIColor *)color;

+ (instancetype)ht_buttonWithImageName:(NSString*)imageName;

+ (instancetype)ht_buttonWithBackImageName:(NSString*)imageName;
@end

@interface HLTButton : UIButton
@property(nonatomic,assign)CGFloat margin;

+(instancetype)ht_buttonWithLeftTitle:(NSString*)title ImageName:(NSString*)imageName;

+(instancetype)ht_buttonWithLeftImageName:(NSString*)imageName title:(NSString*)title;

+(instancetype)ht_buttonWithTopImageName:(NSString*)imageName title:(NSString*)title;

+(instancetype)ht_buttonWithTopTitle:(NSString*)title imageName:(NSString*)imageName;

@end


NS_ASSUME_NONNULL_END

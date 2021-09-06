//
//  UIButton+HTButton.m
//  111
//
//  Created by 韩李涛 on 2021/4/30.
//

#import "UIButton+HTButton.h"

@implementation UIButton (HTButton)
+ (instancetype)ht_buttonWithTitle:(NSString *)title texColor:(UIColor *)color{
    UIButton *btn = [[UIButton alloc]init];
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    return btn;
}

+ (instancetype)ht_buttonWithImageName:(NSString*)imageName{
    UIButton *btn = [[UIButton alloc]init];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    return btn;
}


+ (instancetype)ht_buttonWithBackImageName:(NSString*)imageName{
    UIButton *btn = [[UIButton alloc]init];
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    return btn;
}
@end


@interface HLTButton()
@property(nonatomic,assign)NSInteger flag;
@end
@implementation HLTButton
+ (instancetype)setUpWithTitle:(NSString*)title ImageName:(NSString*)imageName{
    HLTButton *btn = [[HLTButton alloc]init];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    return  btn;
}
- (void)layoutSubviews{
    [super layoutSubviews];
   
    CGFloat imagW = self.imageView.frame.size.width;
    CGFloat titleW = self.titleLabel.frame.size.width;
    
    CGFloat imagH = self.imageView.frame.size.height;
    CGFloat titleH = self.titleLabel.frame.size.height;
    
    CGFloat w = self.margin + imagW + titleW;
    CGFloat h = self.margin + imagH + titleH;
    
    CGFloat x = (self.frame.size.width - w)/2;
    
    CGFloat y = (self.frame.size.height-h)/2;

    if (self.flag==1) {
        self.titleLabel.frame = CGRectMake(x, self.titleLabel.frame.origin.y, titleW, self.titleLabel.frame.size.height);
        self.imageView.frame = CGRectMake(_margin+CGRectGetMaxX(self.titleLabel.frame), self.imageView.frame.origin.y, imagW, self.imageView.frame.size.height);
    }else if(self.flag==0){
        self.imageView.frame = CGRectMake(x, self.imageView.frame.origin.y, imagW, self.imageView.frame.size.height);
        
        self.titleLabel.frame = CGRectMake(_margin+CGRectGetMaxX(self.imageView.frame), self.titleLabel.frame.origin.y, titleW, self.titleLabel.frame.size.height);
    }else if(self.flag==3){
        
        self.imageView.frame = CGRectMake((self.frame.size.width-self.imageView.frame.size.width)/2, y, imagW, self.imageView.frame.size.height);
        
        self.titleLabel.frame = CGRectMake((self.frame.size.width-self.titleLabel.frame.size.width)/2,_margin+CGRectGetMaxY(self.imageView.frame),  titleW, self.titleLabel.frame.size.height);
    }else if(self.flag==4){
        self.titleLabel.frame = CGRectMake((self.frame.size.width-self.titleLabel.frame.size.width)/2,y,  titleW, self.titleLabel.frame.size.height);
        self.imageView.frame = CGRectMake((self.frame.size.width-self.imageView.frame.size.width)/2, _margin+CGRectGetMaxY(self.titleLabel.frame), imagW, self.imageView.frame.size.height);
    }
}


+(instancetype)ht_buttonWithLeftTitle:(NSString*)title ImageName:(NSString*)imageName{
    
    HLTButton *btn = [[HLTButton alloc]init];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    btn.flag = 1;
    
    return btn;
    
}


+(instancetype)ht_buttonWithLeftImageName:(NSString*)imageName title:(NSString*)title  {
    HLTButton *btn = [HLTButton setUpWithTitle:title ImageName:imageName];
    btn.flag = 0;
    return btn;
}

+(instancetype)ht_buttonWithTopImageName:(NSString*)imageName title:(NSString*)title{
    HLTButton *btn = [HLTButton setUpWithTitle:title ImageName:imageName];
    btn.flag = 3;
    return btn;
}

+(instancetype)ht_buttonWithTopTitle:(NSString*)title imageName:(NSString*)imageName {
    HLTButton *btn = [HLTButton setUpWithTitle:title ImageName:imageName];
    btn.flag = 4;
    return btn;
}
@end


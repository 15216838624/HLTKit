//
//  ItemsView.m
//  111
//
//  Created by 韩李涛 on 2021/4/29.
//

#import "GridView.h"
@interface GridView()
@property(nonatomic,strong)NSArray *array;
@property(nonatomic,strong)UIButton *selectButton;
@end
@implementation GridView
+ (instancetype)GridViewViewWithArray:(NSArray<NSString *> *)array{
    return [[self alloc]initWithArray:array];
}
- (instancetype)initWithArray:(NSArray *)array{
    self = [super init];
    if (self) {
        self.array = array;
        self.configures = [[ItemsConfigures alloc]init];
        _configures.lableHeight = 40;
        _configures.lableMinWidth = 0;
        _configures.itemmargin =10;
        _configures.linemargin = 15;
        _configures.lableFont = [UIFont systemFontOfSize:14];
         self.clipsToBounds = YES;
          for (int i=0; i<array.count; i++) {
              UIButton *btn = [[UIButton alloc]init];
              btn.titleLabel.textAlignment = NSTextAlignmentCenter;
              btn.titleLabel.text = array[i];
              btn.backgroundColor = [UIColor redColor];
              [self addSubview:btn];
              btn.tag = i;
              btn.clipsToBounds = YES;
              [btn addTarget:self action:@selector(choose:) forControlEvents:UIControlEventTouchUpInside];
          }
        if(!self.noSelected){
            [self setSelectedIndext:0];
        }
}
    return self;
}
- (void)setSelectedIndext:(NSInteger)indext{
    UIButton *btn= self.subviews[indext];
    btn.selected = YES;
    self.selectButton = btn;
    
}
- (void)choose:(UIButton *)sender{
    sender.selected = YES;
    self.selectButton.selected = NO;
    self.selectButton = sender;
    if ([self.delegate respondsToSelector:@selector(gridViewClickIndext:)]) {
        [self.delegate gridViewClickIndext:sender.tag];
    }
}
- (void)layoutSubviews{
    [super layoutSubviews];

      CGRect lastFrame = CGRectZero;
      CGFloat height =0;
      CGFloat y = 0;
      for (int i=0; i<self.subviews.count; i++) {
          UIButton *btn= self.subviews[i];
          btn.titleLabel.font = self.configures.lableFont;
          [btn setTitleColor:self.configures.lableSeletedTextColor forState:UIControlStateSelected];
          CGFloat width = [self getWidthWithText:self.array[i] height:self.configures.lableHeight font:self.configures.lableFont];
          [btn setTitle:self.array[i] forState:UIControlStateNormal];
          if (i==0) {
    
              btn.frame = CGRectMake(0, y, width, self.configures.lableHeight);
          }else{
              CGFloat x = CGRectGetMaxX(lastFrame) + self.configures.itemmargin;
              if (x+width>self.frame.size.width) {
                  x = 0;
                
                  y =  CGRectGetMaxY(lastFrame)+self.configures.linemargin;
              }
              btn.frame = CGRectMake(x, y, width, 40);
              if (i==self.subviews.count-1) {
                  height = CGRectGetMaxY(btn.frame);
              }
          }
          lastFrame = btn.frame;
      }
    CGRect newrect = self.frame;
    newrect.size.height = height;
    self.frame = newrect;
}
//根据高度度求宽度  text 计算的内容  Height 计算的高度 font字体大小
-(CGFloat)getWidthWithText:(NSString *)text height:(CGFloat)height font:(UIFont *)font{
    if (self.configures.lableWidth>0) {
        return self.configures.lableWidth;
    }
    
    
    CGRect rect = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, height)
                                        options:NSStringDrawingUsesLineFragmentOrigin
                                     attributes:@{NSFontAttributeName:font}
                                        context:nil];
    return ceil(rect.size.width)>self.configures.lableMinWidth?ceil(rect.size.width):self.configures.lableMinWidth;
}
- (void)setConfigures:(ItemsConfigures *)configures{
    configures.lableHeight =  _configures.lableHeight;
    configures.lableMinWidth =  _configures.lableMinWidth;
    configures.itemmargin=   _configures.itemmargin;
    configures.linemargin =_configures.linemargin;
    configures.lableFont =_configures.lableFont;
    _configures = configures;
}
@end



@implementation ItemsConfigures

@end

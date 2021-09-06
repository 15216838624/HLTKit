//
//  ItemsView.h
//  111
//
//  Created by 韩李涛 on 2021/4/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol GridViewDelegate <NSObject>
@optional

- (void)gridViewClickIndext:(NSInteger)indext;


@end
@class  ItemsConfigures;
@interface GridView: UIView
@property(nonatomic,strong) ItemsConfigures *configures;
@property(nonatomic,assign)BOOL noSelected;//Yes，默认没有选中效果
@property(nonatomic,weak)id<GridViewDelegate>delegate;
+ (instancetype)GridViewViewWithArray:(NSArray<NSString *> *)array;
- (void)setSelectedIndext:(NSInteger)indext;//默认选中索引
@end

@interface ItemsConfigures :NSObject

@property(nonatomic,assign)CGFloat linemargin;
@property(nonatomic,assign)CGFloat  itemmargin;
@property(nonatomic,assign)CGFloat lableHeight;
@property(nonatomic,assign)CGFloat lableMinWidth;
@property(nonatomic,strong)UIColor *lableTextColor;
@property(nonatomic,strong)UIColor *lableSeletedTextColor;
@property(nonatomic,strong)UIFont *lableFont;
@property(nonatomic,strong)UIColor *lableBackgroundColor;
@property(nonatomic,assign)CGFloat lableWidth;//设置了宽度，lableMinWidth就无效了。

@end
NS_ASSUME_NONNULL_END

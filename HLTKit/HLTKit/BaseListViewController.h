//
//  BaseListViewController.h
//  122334567
//
//  Created by 韩李涛 on 2021/5/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface BaseListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView * _Nullable listView;

- (void)setUpWithDataSouce: (NSArray *)dataSource getCell:(UITableViewCell*(^)(UITableView *tableView, NSIndexPath *indexPath))cellBlock cellHeight:(nullable CGFloat(^) (NSIndexPath *indexPath))cellHeightBlock;
@end

                             
NS_ASSUME_NONNULL_END

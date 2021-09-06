
#import "BaseListViewController.h"

@interface BaseListViewController ()
@property(nonatomic,strong)UITableViewCell*(^GetCellBlock)(UITableView *tableView,NSIndexPath *indexPath);
@property(nonatomic,strong)CGFloat(^CellheightBlock)(NSIndexPath *indexPath);
@property(nonatomic,strong)NSArray *dataArray;
@property(nonatomic,strong)NSMutableDictionary *heightDictionry;
@end

@implementation BaseListViewController

- (void)setUpWithDataSouce: (NSArray *)dataSource getCell:(UITableViewCell*(^)(UITableView *tableView, NSIndexPath *indexPath))cellBlock cellHeight:(nullable CGFloat(^) (NSIndexPath *indexPath))cellHeightBlock{
    self.GetCellBlock = cellBlock;
    self.CellheightBlock = cellHeightBlock;
    self.dataArray =dataSource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.heightDictionry = [NSMutableDictionary dictionary];
    if (@available(iOS 11.0, *)) {
        _listView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }else{}
    [self.view addSubview:self.listView];
    _listView.dataSource = self;
    _listView.delegate = self;
    _listView.tableFooterView = [[UIView alloc]init];
    _listView.estimatedSectionFooterHeight = 0.f;
    _listView.estimatedSectionHeaderHeight = 0.f;
    _listView.estimatedRowHeight = 0.f;
    _listView.frame = self.view.frame;
    if (@available(iOS 11.0, *)) {
        _listView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }

}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.CellheightBlock) {
        return self.CellheightBlock(indexPath);
    }
    return 44;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = self.GetCellBlock(tableView,indexPath);
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (UITableView *)listView{
    if (_listView==nil) {
        _listView=[[UITableView alloc]init];
    }
    return _listView;
}

@end

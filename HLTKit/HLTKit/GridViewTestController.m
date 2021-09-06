//
//  GridViewTestController.m
//  111
//
//  Created by 韩李涛 on 2021/5/31.
//

#import "GridViewTestController.h"
#import "GridView.h"
@interface GridViewTestController ()<GridViewDelegate>

@end

@implementation GridViewTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
        ItemsConfigures *item = [[ItemsConfigures alloc]init];
        item.lableTextColor = [UIColor greenColor];
        //item.lableWidth= 100;
        item.lableSeletedTextColor = [UIColor purpleColor];
        NSArray *arr = @[@"测试",@"测试测试",@"ceshiceshiceshi",@"cccc",@"dddffkkkkf",@"2344",@"rrrrr",@"ffffffffffff",@"0000",@"lopp[[[eoeoeeoro"];
        GridView *itemView = [GridView GridViewViewWithArray:arr];
        itemView.delegate = self;
        itemView.frame = CGRectMake(10, 100, 355, 0);
        itemView.noSelected = YES;
        [self.view addSubview:itemView];
        itemView.configures = item;
    //
}
- (void)gridViewClickIndext:(NSInteger)indext{
    NSLog(@"%ld",indext);
}

@end

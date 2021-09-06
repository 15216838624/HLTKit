//
//  ViewController.m
//  HLTKit
//
//  Created by 韩李涛 on 2021/9/6.
//

#import "ViewController.h"
#import "GridViewTestController.h"
#import "LayoutGuideTestController.h"
#import "StackViewTestController.h"
@interface ViewController ()
@property(nonatomic,strong)NSArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *arr = @[@"UILayoutGuide的使用",@"UIStackView的使用",@"GrideView的使用"];
    self.listView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    [self.listView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self setUpWithDataSouce:arr getCell:^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.font = [UIFont systemFontOfSize:30];
        cell.textLabel.text = arr[indexPath.row];
        return cell;
        
        
    } cellHeight:nil];
    
    self.array = arr;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str = self.array[indexPath.row];
    if ([str  isEqualToString:@"UILayoutGuide的使用"]) {
        LayoutGuideTestController *vc =[[LayoutGuideTestController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    if ([str  isEqualToString:@"UIStackView的使用"]) {
        StackViewTestController *vc =[[StackViewTestController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    if ([str  isEqualToString:@"GrideView的使用"]) {
        GridViewTestController *vc =[[GridViewTestController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
 
    
    
    
}

@end

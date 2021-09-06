//
//  LayoutGuideTestController.m
//  111
//
//  Created by 韩李涛 on 2021/5/31.
//

#import "LayoutGuideTestController.h"

@interface LayoutGuideTestController ()

@end

@implementation LayoutGuideTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILayoutGuide *layoutGuide = [[UILayoutGuide alloc] init];
    [self.view addLayoutGuide:layoutGuide];

    [[layoutGuide.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:200]setActive:YES];
    [[layoutGuide.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0]setActive:YES];

    UILabel *lable1 = [[UILabel alloc]init];
    [self.view addSubview:lable1];
    lable1.translatesAutoresizingMaskIntoConstraints = NO;
    lable1.text = @"测试";
    lable1.backgroundColor = [UIColor redColor];
    [[lable1.leftAnchor constraintEqualToAnchor:layoutGuide.leftAnchor constant:0]setActive:YES];
    [[lable1.centerYAnchor constraintEqualToAnchor:layoutGuide.centerYAnchor constant:0]setActive:YES];

    UILabel *lable2 = [[UILabel alloc]init];
    [self.view addSubview:lable2];
    lable2.text = @"测试2";
    lable2.backgroundColor = [UIColor redColor];
    [[lable2.rightAnchor constraintEqualToAnchor:layoutGuide.rightAnchor constant:0]setActive:YES];
    [[lable2.centerYAnchor constraintEqualToAnchor:layoutGuide.centerYAnchor  constant:0]setActive:YES];

    [[lable2.leftAnchor constraintEqualToAnchor:lable1.rightAnchor constant:20]setActive:YES];
    lable2.translatesAutoresizingMaskIntoConstraints = NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

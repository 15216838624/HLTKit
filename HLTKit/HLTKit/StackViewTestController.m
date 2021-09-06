//
//  StackViewTestController.m
//  111
//
//  Created by 韩李涛 on 2021/5/31.
//

#import "StackViewTestController.h"
#import "UIStackView+Extension.h"
@interface StackViewTestController ()

@end

@implementation StackViewTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self test3];
}
#pragma mark - 01、上图、下文字
- (void)test1{
    UILabel *lable =[[UILabel alloc]init];
    lable.translatesAutoresizingMaskIntoConstraints = NO;
    lable.textColor = [UIColor redColor];
    lable.text = @"测试";
    
    UIImageView *imageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newcs_All"]];
    UIStackView *stackView = [UIStackView VerticalWithViewItems:@[imageView,lable] spacing:10];
    
    //[UIStackView VerticalWithViewItems:@[imageView,lable] spacing:10];
    [self.view addSubview:stackView];

    [[stackView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:100]setActive:YES];
    [[stackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100]setActive:YES];
}
#pragma mark - 02、上文字、下图
- (void)test2{
    UILabel *lable =[[UILabel alloc]init];
    lable.translatesAutoresizingMaskIntoConstraints = NO;
    lable.textColor = [UIColor redColor];
    lable.text = @"测试";
    
    UIImageView *imageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newcs_All"]];
    UIStackView *stackView = [UIStackView VerticalWithViewItems:@[imageView,lable] spacing:10];
    [self.view addSubview:stackView];
 
    [[stackView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:100]setActive:YES];
    [[stackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100]setActive:YES];
}


#pragma mark - 03、左文字、右图
- (void)test3{
    UILabel *lable =[[UILabel alloc]init];
    lable.translatesAutoresizingMaskIntoConstraints = NO;
    lable.textColor = [UIColor redColor];
    lable.text = @"测试";
    
    UIImageView *imageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newcs_All"]];
    UIStackView *stackView = [UIStackView HorizonWithViewItems:@[imageView,lable] spacing:10];
    [self.view addSubview:stackView];
 
    [[stackView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:100]setActive:YES];
    [[stackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100]setActive:YES];
}
#pragma mark - 04、左图、右文字
- (void)test4{
    UILabel *lable =[[UILabel alloc]init];
    lable.translatesAutoresizingMaskIntoConstraints = NO;
    lable.textColor = [UIColor redColor];
    lable.text = @"测试";
    
    UIImageView *imageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newcs_All"]];
    UIStackView *stackView = [UIStackView HorizonWithViewItems:@[lable,imageView] spacing:10];
    [self.view addSubview:stackView];
 
    [[stackView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:100]setActive:YES];
    [[stackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100]setActive:YES];
}
#pragma mark - 05、多图
- (void)test5{
    UIImageView *imageView1 =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newcs_All"]];
    UIImageView *imageView2 =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newcs_All"]];
    UIImageView *imageView3 =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newcs_All"]];
    UIStackView *stackView = [UIStackView HorizonWithViewItems:@[imageView1,imageView2,imageView3] spacing:10];
    [self.view addSubview:stackView];
 
    [[stackView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:100]setActive:YES];
    [[stackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100]setActive:YES];
}
#pragma mark - 06、多文字
- (void)test6{
    UILabel *lable =[[UILabel alloc]init];
    lable.translatesAutoresizingMaskIntoConstraints = NO;
    lable.textColor = [UIColor redColor];
    lable.text = @"测试1";
    
    UILabel *lable1 =[[UILabel alloc]init];
    lable1.translatesAutoresizingMaskIntoConstraints = NO;
    lable1.textColor = [UIColor redColor];
    lable1.text = @"测试2";
 
    UILabel *lable2 =[[UILabel alloc]init];
    lable2.translatesAutoresizingMaskIntoConstraints = NO;
    lable2.textColor = [UIColor redColor];
    lable2.text = @"测试3";
    
    UIStackView *stackView = [UIStackView HorizonWithViewItems:@[lable,lable1,lable2] spacing:10];
    [self.view addSubview:stackView];
 
    [[stackView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:100]setActive:YES];
    [[stackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100]setActive:YES];
    
}
#pragma mark - 07、设置文字高度，只需要给lable设置一个高度约束就行了
- (void)test7{
    UILabel *lable =[[UILabel alloc]init];
    lable.translatesAutoresizingMaskIntoConstraints = NO;
    lable.textColor = [UIColor redColor];
    lable.text = @"测试";
    [[lable.heightAnchor constraintEqualToConstant:100]setActive:YES];
    lable.backgroundColor = [UIColor yellowColor];
    
    UIImageView *imageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newcs_All"]];
    UIStackView *stackView = [UIStackView HorizonWithViewItems:@[imageView,lable] spacing:10  target:self action:@selector(test:)];
    [self.view addSubview:stackView];
 
    [[stackView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:100]setActive:YES];
    [[stackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100]setActive:YES];
}

- (void)test:(UITapGestureRecognizer *)gesture{
    UIStackView *stackView = (UIStackView *)gesture.view;
    NSLog(@"%@",stackView.arrangedSubviews);
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

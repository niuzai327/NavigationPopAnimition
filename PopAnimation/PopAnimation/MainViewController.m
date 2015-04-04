//
//  MainViewController.m
//  PopAnimation
//
//  Created by YXY on 15/4/4.
//
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"One";
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Back" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(0, 0, 30, 44)];
    [button setBackgroundColor:[UIColor blueColor]];
    [button addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundImage:[UIImage imageNamed:@"tabbar1.png"] forState:UIControlStateNormal];
//    [self.view addSubview:button];
    UIBarButtonItem *leftButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem = leftButtonItem;
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
}

- (void)back:(id)sender
{
    UIViewController *seceondVC = [[UIViewController alloc] init];
    seceondVC.view.backgroundColor = [UIColor blueColor];
    seceondVC.title = @"Two";
    [self.navigationController pushViewController:seceondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

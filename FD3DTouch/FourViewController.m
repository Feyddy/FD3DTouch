//
//  FourViewController.m
//  FD3DTouch
//
//  Created by 徐忠林 on 10/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    UILabel * lab = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    lab.text = @"页面四";
    [self.view addSubview:lab];
    // Do any additional setup after loading the view.
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

//
//  ViewController.m
//  FD3DTouch
//
//  Created by 徐忠林 on 10/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view, typically from a nib.
    [self registerNotification];
}
- (void)registerNotification{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onesNotification) name:@"ONES" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(twosNotification) name:@"TWOS" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(threesNotification) name:@"THREES" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(foursNotification) name:@"FOURS" object:nil];
}

/**跳转页面一*/
- (void)onesNotification{
    [self presentViewController:[OneViewController new] animated:YES completion:nil];
}

/**跳转页面二*/
- (void)twosNotification{
    [self presentViewController:[TwoViewController new] animated:YES completion:nil];
}

/**跳转页面三*/
- (void)threesNotification{
    [self presentViewController:[ThreeViewController new] animated:YES completion:nil];
}

/**跳转页面四*/
- (void)foursNotification{
    [self presentViewController:[FourViewController new] animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

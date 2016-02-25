//
//  temp1SwitchViewController.m
//  View Switcher
//
//  Created by shucheng on 16/2/25.
//  Copyright © 2016年 shucheng. All rights reserved.
//

#import "temp1SwitchViewController.h"
#import "temp1BlueViewController.h"
#import "temp1YellowViewController.h"

@interface temp1SwitchViewController ()

@property(strong,nonatomic)temp1YellowViewController *yellowViewController;
@property(strong,nonatomic)temp1BlueViewController *blueViewController;


@end

@implementation temp1SwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.blueViewController = [self.storyboard
                               instantiateViewControllerWithIdentifier:
                               @"Blue"];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
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


-(IBAction)switchViews:(id)sender{
    if (!self.yellowViewController.view.subviews) {
        if (!self.yellowViewController) {
            self.yellowViewController=[self.storyboard
                                       instantiateViewControllerWithIdentifier:@"Yellow"];
        }
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController atIndex:0];
        
    }else{
        if (!self.blueViewController){
            
        self.blueViewController=[self.storyboard
                                 instantiateViewControllerWithIdentifier:@"Blue"];
    }
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
}
}
@end

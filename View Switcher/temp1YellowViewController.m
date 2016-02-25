//
//  temp1YellowViewController.m
//  View Switcher
//
//  Created by shucheng on 16/2/25.
//  Copyright © 2016年 shucheng. All rights reserved.
//

#import "temp1YellowViewController.h"

@interface temp1YellowViewController ()

@end

@implementation temp1YellowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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


-(IBAction)yellowButtonPressed{
    UIAlertView *alert =[[UIAlertView alloc]
                         initWithTitle:@"Yellow view button pressed"
                         message:@"Your pressed the button on the yellow view."
                         delegate:nil
                         cancelButtonTitle:@"Yep,I did."
                         otherButtonTitles:nil, nil];
    [alert show];
}


@end

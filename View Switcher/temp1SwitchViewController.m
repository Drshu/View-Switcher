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
    [self.view insertSubview:self.blueViewController.view atIndex:0];//0表示将蓝色视图插入至索引为0的位置，也就是所有的视图之后，而保证了工具栏一直都显示
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if (!self.blueViewController.view.subviews) {
        self.blueViewController= nil;
    }else{
        self.yellowViewController=nil;
    }//检测是显示的哪一个视图并释放另一个视图和控制器
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(IBAction)switchViews:(id)sender{//打开app之后会先加载蓝色视图，黄色视图会延迟加载
    [UIView beginAnimations:@"View Filp" context:NULL];//声明一个动画块，context是一个指针，指向关联到动画块的对象
    [UIView setAnimationDuration:0.4];//动画持续时间
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];//设置动画曲线
    if (!self.yellowViewController.view.superview) {
        if (!self.yellowViewController) {
            self.yellowViewController=[self.storyboard
                                       instantiateViewControllerWithIdentifier:@"Yellow"];//这里是检查yellowviewcontroller和起父视图是否存在，当都不存在则创建，标识符为『yellow』
        }
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        [self.blueViewController.view removeFromSuperview];//将蓝色视图删除
        [self.view insertSubview:self.yellowViewController.view atIndex:0];//加入黄色视图
        
    }else{
        if (!self.blueViewController){
            
        self.blueViewController=[self.storyboard
                                 instantiateViewControllerWithIdentifier:@"Blue"];
    }
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
}
    [UIView commitAnimations];
}
@end

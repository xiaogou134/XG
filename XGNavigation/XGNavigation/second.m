//
//  second.m
//  XGNavigation
//
//  Created by xiaogou134 on 2016/11/23.
//  Copyright © 2016年 xiaogou134. All rights reserved.
//
#import "first.h"
#import "second.h"
#import "third.h"
@interface second ()<sendValue>

@end

@implementation second

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Second";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"third" style:UIBarButtonItemStyleDone target:self action:@selector(goToTd)];

    
    // Do any additional setup after loading the view.
    
}
- (void)goToTd{
   
    third *td = [[third alloc] init];
    [self.navigationController pushViewController:td animated:YES ];

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

//
//  third.m
//  XGNavigation
//
//  Created by xiaogou134 on 2016/11/23.
//  Copyright © 2016年 xiaogou134. All rights reserved.
//

#import "third.h"
#import "first.h"
@interface third ()<sendValue>
@property UITextField *tdField;
@end

@implementation third

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Third";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"first" style:UIBarButtonItemStyleDone target:self action:@selector(goToFd)];
    _tdField = [[UITextField alloc] init];
    [_tdField setFrame:CGRectMake(50, 300, 100, 40)];
    [_tdField setBackgroundColor:[UIColor colorWithRed:130/255.0 green:125/255.0 blue:234/255.0 alpha:1.0]];
    [self.view addSubview:_tdField];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)goToFd{
//     first *ft = [[first alloc] init];
//    if([self.delegate respondsToSelector:@selector(sendValue:)]){
      [_delegate sendValue: _tdField.text];
//        NSLog(@"hello");}
//    [self dismissViewControllerAnimated:YES completion:nil];
//    [self.navigationController pushViewController:ft animated:YES];
//    [self.navigationController  popToViewController:ft animated:YES];
      [self.navigationController popToRootViewControllerAnimated:YES];
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

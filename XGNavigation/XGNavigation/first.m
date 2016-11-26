//
//  first.m
//  XGNavigation
//
//  Created by xiaogou134 on 2016/11/23.
//  Copyright © 2016年 xiaogou134. All rights reserved.
//

#import "first.h"
#import "second.h"
#import "third.h"
@interface first ()<sendValue>
@property UILabel *oneLabel;
@end

@implementation first

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Frist";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"second" style:UIBarButtonItemStyleDone target:self action:@selector(goToSd)];
        _oneLabel = [[UILabel alloc] init];
    [_oneLabel setFrame:CGRectMake(50, 300, 100, 40)];
    [_oneLabel setBackgroundColor:[UIColor colorWithRed:130/255.0 green:125/255.0 blue:234/255.0 alpha:1.0]];
    third *td = [[third alloc ]init];
    td.delegate = self;
    [self.view addSubview:_oneLabel];

    // Do any additional setup after loading the view.
}

- (void) sendValue:(NSString *)aWord{
    _oneLabel.text = aWord;
  
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)goToSd{
    
    second *sd =[[second alloc] init];
    [self.navigationController pushViewController:sd animated:YES];
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

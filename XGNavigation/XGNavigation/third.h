//
//  third.h
//  XGNavigation
//
//  Created by xiaogou134 on 2016/11/23.
//  Copyright © 2016年 xiaogou134. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol sendValue <NSObject>
- (void) sendValue:(NSString *) aWord;
@optional
@end

@interface third : UIViewController
@property(nonatomic,weak)id<sendValue> delegate;
@end

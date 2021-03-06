//
//  V2EXTableViewController.h
//  V2EX
//
//  Created by WildCat on 2/7/14.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>
#import "V2EXRequestDataDelegate.h"
#import "UIViewController+MBProgressHUD.h"
#import "V2EXNormalModel.h"

@interface V2EXTableViewController : UITableViewController <V2EXRequestDataDelegate, UIAlertViewDelegate>
{
    NSUInteger _loadingStatus; // 0 - No loading ; 1 - Loading topic list ; 2 - Loading single topic
    NSUInteger _topicIDWillBePushedTo;
}

@property (nonatomic, strong) NSMutableArray* data;
@property (nonatomic, strong) V2EXNormalModel *model;

- (BOOL)canStartNewLoading;
- (void)pushToSingleTopicViewController:(NSData *)dataObject;

@end

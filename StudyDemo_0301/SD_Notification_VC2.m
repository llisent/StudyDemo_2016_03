//
//  SD_Notification_VC2.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/3/30.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "SD_Notification_VC2.h"

@interface SD_Notification_VC2 ()

@end

@implementation SD_Notification_VC2

- (void)viewDidLoad {
    [super viewDidLoad];
    [self makeNotifi];
}

- (void)makeNotifi{
    
}

- (IBAction)sendNotifi:(id)sender {
    NSNotification *notifi = [NSNotification notificationWithName:@"tongzhi" object:nil];
    [[NSNotificationCenter defaultCenter]postNotification:notifi];

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

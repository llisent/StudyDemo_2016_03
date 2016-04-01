//
//  SD_Notification_VC1.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/3/30.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "SD_Notification_VC1.h"
#import "SD_Notification_VC2.h"

@interface SD_Notification_VC1 ()

@end

@implementation SD_Notification_VC1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(haha) name:@"tongzhi" object:nil];
}

- (void)haha{
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (IBAction)pushToNextVC:(id)sender {
    SD_Notification_VC2 *vc = [[SD_Notification_VC2 alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
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

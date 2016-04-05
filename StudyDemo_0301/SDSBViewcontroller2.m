//
//  SDSBViewcontroller2.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/4/1.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "SDSBViewcontroller2.h"

@interface SDSBViewcontroller2 ()

@end

@implementation SDSBViewcontroller2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
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

//
//  SDSBViewcontroller1.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/4/1.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "SDSBViewcontroller1.h"

@interface SDSBViewcontroller1 ()

@end

@implementation SDSBViewcontroller1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    NSString *a = @"111";
    if ([identifier isEqualToString:@"hahaha"]) {
        if (![a isEqualToString:@"111"]) {
            UIAlertView *aler = [[UIAlertView alloc]initWithTitle:@"提示" message:@"NO" delegate:self cancelButtonTitle:nil otherButtonTitles:@"好的", nil];
            [aler show];
            return NO;
        }else{
            return YES;
        }
    }
    return YES;
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

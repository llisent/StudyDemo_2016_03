//
//  SDCopyWithStrong.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/3/31.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "SDCopyWithStrong.h"

@interface SDCopyWithStrong ()

@property (retain,nonatomic) NSString *rStr;
@property (copy, nonatomic ) NSString *cStr;

@end

@implementation SDCopyWithStrong

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableString *mStr = [NSMutableString stringWithFormat:@"abc"];
    self.rStr             = mStr;
    self.cStr             = mStr;
    NSLog(@"mStr:%p,%p",  mStr,&mStr);
    NSLog(@"retainStr:%p,%p", _rStr, &_rStr);
    NSLog(@"copyStr:%p,%p",   _cStr, &_cStr);
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

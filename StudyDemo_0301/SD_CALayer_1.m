//
//  SD_CALayer_1.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/3/30.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "SD_CALayer_1.h"

@interface SD_CALayer_1 ()

@end

@implementation SD_CALayer_1

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatConstomUI];
}

- (void)creatConstomUI{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    view1.backgroundColor = RGBA(192, 255, 62, 1);
    [self.view addSubview:view1];
    
    
    CALayer *layer = view1.layer;
    layer.frame = CGRectMake(0, 200, 100, 100);
    [self.view.layer addSublayer:layer];
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

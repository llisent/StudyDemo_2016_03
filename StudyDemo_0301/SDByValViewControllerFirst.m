//
//  SDByValViewControllerFirst.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/3/31.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "SDByValViewControllerFirst.h"
#import "SDByValViewControllerSecond.h"

@interface SDByValViewControllerFirst ()

@end

@implementation SDByValViewControllerFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    
    void (^myBlock)(NSString *, NSString *) = ^(NSString *a, NSString *b){
        NSLog(@"%@%@",a,b);
    };
    myBlock(@"123",@"456");
    
}
- (IBAction)push:(id)sender {
    SDByValViewControllerSecond *svc = [[SDByValViewControllerSecond alloc]init];
    svc.stringTransmit = ^(NSString *strByWritten){
        self.label.text = strByWritten;
    };
    [self.navigationController pushViewController:svc animated:YES];
    
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

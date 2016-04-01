//
//  SDByValViewControllerSecond.h
//  StudyDemo_0301
//
//  Created by Mrr on 16/3/31.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDByValViewControllerSecond : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textfield;

@property (copy, nonatomic) void (^stringTransmit)(NSString *);


@end

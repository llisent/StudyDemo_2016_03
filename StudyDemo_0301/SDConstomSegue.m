//
//  SDConstomSegue.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/4/1.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "SDConstomSegue.h"

@implementation SDConstomSegue



- (void)perform{
//    // 触发Segue的ViewController
//    UIViewController * svc = (UIViewController *)self.sourceViewController;
//    // 目标Segue的ViewController
//    UIViewController * dvc = (UIViewController *)self.destinationViewController;
//    // 为两个View的切换设置动画效果
//    [UIView transitionFromView:svc.view
//                        toView:dvc.view
//                      duration:1
//                       options:UIViewAnimationOptionTransitionCurlDown
//                    completion:nil];
    
    UIViewController* source = self.sourceViewController;
    
    UIViewController* destination = self.destinationViewController;
    
    UIGraphicsBeginImageContext(destination.view.bounds.size);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    [destination.view.layer renderInContext:contextRef];
    UIImage* desImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView* iView = [[UIImageView alloc] initWithImage:desImage];
    [iView setBackgroundColor:[UIColor grayColor]];
    iView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    iView.contentMode = UIViewContentModeCenter;
    
    [source.parentViewController.view addSubview:iView];
    
    CGAffineTransform scaleT = CGAffineTransformMakeScale(0.1, 0.1);
    
    CGAffineTransform rotateT = CGAffineTransformMakeRotation(M_PI);
    
    //iView.transform = CGAffineTransformConcat(scaleT, rotateT);
    iView.transform =CGAffineTransformTranslate(CGAffineTransformConcat(scaleT, rotateT), 1, 1);
    CGPoint originPoint =  iView.center;
    iView.center = CGPointMake(iView.bounds.size.width, iView.bounds.size.height);
    
    //iView.center = CGPointMake(originPoint.x -iView.bounds.size.width, originPoint.y);
    [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeCubic animations:^{
        iView.transform = CGAffineTransformIdentity;
        iView.center = originPoint;
        
    }completion:^(BOOL finished) {
        
        
        [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:nil];
        [iView removeFromSuperview];
    }];
}

@end
